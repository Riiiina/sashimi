.class public Lcom/adobe/reader/AdobeReader;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/reader/AdobeReader$9;,
        Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;
    }
.end annotation


# static fields
.field public static final ADOBE_READER_PREFERENCES:Ljava/lang/String; = "com.adobe.reader.preferences"

.field public static final CACHE_PDF_FILE_NAME:Ljava/lang/String; = "cache_file.pdf"

.field private static final CACHE_THRESHOLD_FACTOR:D = 0.8

.field public static final DISPLAY_FIND_PROGRESS_BAR:I = 0x1

.field public static final DISPLAY_FIND_PROGRESS_BAR_DELAY:J = 0x3e8L

.field private static final DUMP_TRACE_INFO:Z = false

.field public static final FILE_BROWSER_RETURN_DATA:Ljava/lang/String; = "com.adobe.reader.FileBrowserReturnData"

.field private static final FILE_OPEN_REQUEST_CODE:I = 0x1

.field public static final FLIP_ANIMATION_DURATION:I = 0x12c

.field private static final HIDE_PAGE_OVERLAY:I = 0x2

.field private static final HIDE_UI_ELEMS:I = 0x1

.field public static final LAST_VIEW_MODE:Ljava/lang/String; = "lastViewMode"

.field private static final LOWER_HEAP_LIMIT_FACTOR:D = 0.75

.field private static final MAX_HEAP_SIZE:I = 0x30

.field private static final MIN_PAGES_FOR_SCRUBBER:I = 0x5

.field private static final NAVIGATE_TO_SCRUBBER_LOCATION:I = 0x1

.field private static final NAVIGATE_TO_SCRUBBER_LOCATION_DELAY:J = 0x3e8L

.field public static final NO_SD_CARD_ERROR:I = 0x66

.field public static final PDF_MIME_TYPE:Ljava/lang/String; = "application/pdf"

.field public static final PORTFOLIO_OPEN_REQUEST_CODE:I = 0x2

.field public static final RESULT_BACK_BUTTON_PRESSED:I = 0x65

.field private static final SCRUBBER_MINIMUM_WIDTH:I = 0x12c

.field private static final SCRUBBER_WIDTH_MULTIPLIER:I = 0x1e

.field public static final SHOW_LOGS:Z = false

.field public static final SHOW_LOGS_TILING:Z = false

.field private static final STREAM_FETCH_BUFFER_SIZE:I = 0x100

.field private static final TABLET_DIAGONAL_THRESHOLD:D = 6.75

.field private static final TILE_CACHE_FOLDER_NAME:Ljava/lang/String; = "tile_cache"

.field private static final TILE_CACHE_SIZE:J = 0x200000L

.field public static final TOAST_MSG_DISPLAY_TIME_IN_MS:I = 0x5dc

.field private static final UI_ELEMS_DURATION:J = 0xfa0L

.field private static final UPPER_HEAP_LIMIT_FACTOR:D = 0.8

.field public static final XOOM_DEBUG:Z

.field private static sDiskCacheSpaceUsed:J

.field public static sDocOpenedViaFileBrowser:Z

.field private static sErrorDlg:Lcom/adobe/reader/AlertDlg;

.field private static sHasPendingErr:Z

.field private static sIsFatalErr:Z

.field public static sIsFindActivated:Z

.field private static sIsFirstPasswdAttempt:Z

.field private static sLowerHeapLimit:D

.field private static sMsgEntryId:I

.field public static sPageView:Lcom/adobe/reader/PageView;

.field private static sPasswd:Ljava/lang/String;

.field private static sPasswdAlert:Lcom/adobe/reader/AlertDlg;

.field private static sPasswdAvailable:Z

.field private static sPasswordView:Landroid/view/View;

.field private static sTileCachePath:Ljava/lang/String;

.field private static sTileFileName:Ljava/lang/String;

.field private static sUpperHeapLimit:D


# instance fields
.field public final EPSILON_FOR_DOUBLE_COMPARISON:D

.field private mActivityPaused:Z

.field private mAddDocPathToRecentlyViewed:Z

.field private mBackgroundThread:Lcom/adobe/reader/BackgroundThread;

.field mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

.field private mCurrentDocPath:Ljava/lang/String;

.field private mDontHideUIElements:Z

.field private mFileOpenViaMenu:Z

.field public mFindProgressDialog:Landroid/app/ProgressDialog;

.field public mFindProgressDialogHandler:Landroid/os/Handler;

.field private mFindTextBox:Landroid/widget/EditText;

.field private mIsBackgroundThreadStopped:Z

.field private mIsRunningOnTablet:Z

.field private mIsSearchInProgress:Z

.field private mNewDocPath:Ljava/lang/String;

.field private mNoMatchFoundToastMessage:Landroid/widget/Toast;

.field private mNonFatalErrorToast:Landroid/widget/Toast;

.field private mOnSizeChangedParams:[I

.field private mPortfolioStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/adobe/reader/ARPortfolioStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mScrubber:Landroid/widget/SeekBar;

.field private mScrubberBottomBarLayout:Landroid/widget/RelativeLayout;

.field private mScrubberChangedDirectly:Z

.field private mScrubberHandler:Landroid/os/Handler;

.field private mShowingUIElems:Z

.field private mUIElemsHandler:Landroid/os/Handler;

.field private mUIThread:Ljava/lang/Thread;

.field public mWasSearchSuccessful:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput-object v2, Lcom/adobe/reader/AdobeReader;->sTileCachePath:Ljava/lang/String;

    sput-object v2, Lcom/adobe/reader/AdobeReader;->sTileFileName:Ljava/lang/String;

    sput-wide v0, Lcom/adobe/reader/AdobeReader;->sLowerHeapLimit:D

    sput-wide v0, Lcom/adobe/reader/AdobeReader;->sUpperHeapLimit:D

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/adobe/reader/AdobeReader;->sDiskCacheSpaceUsed:J

    sput-boolean v4, Lcom/adobe/reader/AdobeReader;->sDocOpenedViaFileBrowser:Z

    sput-boolean v3, Lcom/adobe/reader/AdobeReader;->sHasPendingErr:Z

    sput-boolean v3, Lcom/adobe/reader/AdobeReader;->sIsFatalErr:Z

    sput v3, Lcom/adobe/reader/AdobeReader;->sMsgEntryId:I

    sput-object v2, Lcom/adobe/reader/AdobeReader;->sPasswd:Ljava/lang/String;

    sput-boolean v3, Lcom/adobe/reader/AdobeReader;->sPasswdAvailable:Z

    sput-boolean v4, Lcom/adobe/reader/AdobeReader;->sIsFirstPasswdAttempt:Z

    sput-object v2, Lcom/adobe/reader/AdobeReader;->sPasswdAlert:Lcom/adobe/reader/AlertDlg;

    sput-object v2, Lcom/adobe/reader/AdobeReader;->sPasswordView:Landroid/view/View;

    sput-object v2, Lcom/adobe/reader/AdobeReader;->sErrorDlg:Lcom/adobe/reader/AlertDlg;

    sput-boolean v3, Lcom/adobe/reader/AdobeReader;->sIsFindActivated:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v3, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    iput-object v3, p0, Lcom/adobe/reader/AdobeReader;->mNewDocPath:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/adobe/reader/AdobeReader;->mAddDocPathToRecentlyViewed:Z

    iput-boolean v2, p0, Lcom/adobe/reader/AdobeReader;->mFileOpenViaMenu:Z

    sget-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->NO_ACTIVITY:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    iput-wide v0, p0, Lcom/adobe/reader/AdobeReader;->EPSILON_FOR_DOUBLE_COMPARISON:D

    iput-boolean v4, p0, Lcom/adobe/reader/AdobeReader;->mIsBackgroundThreadStopped:Z

    iput-boolean v4, p0, Lcom/adobe/reader/AdobeReader;->mActivityPaused:Z

    iput-boolean v2, p0, Lcom/adobe/reader/AdobeReader;->mWasSearchSuccessful:Z

    iput-boolean v2, p0, Lcom/adobe/reader/AdobeReader;->mIsSearchInProgress:Z

    iput-boolean v2, p0, Lcom/adobe/reader/AdobeReader;->mScrubberChangedDirectly:Z

    iput-object v3, p0, Lcom/adobe/reader/AdobeReader;->mFindTextBox:Landroid/widget/EditText;

    iput-boolean v2, p0, Lcom/adobe/reader/AdobeReader;->mDontHideUIElements:Z

    iput-boolean v2, p0, Lcom/adobe/reader/AdobeReader;->mShowingUIElems:Z

    iput-object v3, p0, Lcom/adobe/reader/AdobeReader;->mOnSizeChangedParams:[I

    iput-boolean v2, p0, Lcom/adobe/reader/AdobeReader;->mIsRunningOnTablet:Z

    iput-object v3, p0, Lcom/adobe/reader/AdobeReader;->mNoMatchFoundToastMessage:Landroid/widget/Toast;

    iput-object v3, p0, Lcom/adobe/reader/AdobeReader;->mNonFatalErrorToast:Landroid/widget/Toast;

    return-void
.end method

.method public static GetDocumentPassword(Lcom/adobe/reader/PageView;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswordView:Landroid/view/View;

    if-nez v0, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/adobe/reader/AdobeReader;->sPasswdAvailable:Z

    if-eqz v0, :cond_1

    sput-boolean v6, Lcom/adobe/reader/AdobeReader;->sPasswdAvailable:Z

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswd:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0, v6}, Lcom/adobe/reader/PageView;->setIsPasswdDialogNotShown(Z)V

    sget-object v1, Lcom/adobe/reader/AdobeReader;->sPasswordView:Landroid/view/View;

    const v2, 0x7f0a002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sget-boolean v1, Lcom/adobe/reader/AdobeReader;->sIsFirstPasswdAttempt:Z

    if-nez v1, :cond_2

    const v1, 0x7f080030

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/adobe/reader/AdobeReader;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    sget-object v1, Lcom/adobe/reader/AdobeReader;->sPasswordView:Landroid/view/View;

    const v2, 0x7f0a0031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/adobe/reader/Runnables;->showPassworDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/AdobeReader;->runOnUiThread(Ljava/lang/Runnable;)V

    sput-boolean v6, Lcom/adobe/reader/AdobeReader;->sIsFirstPasswdAttempt:Z

    move-object v0, v7

    goto :goto_0

    :cond_2
    const v1, 0x7f08002e

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/adobe/reader/AdobeReader;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public static HasPendingError()Z
    .locals 1

    sget-boolean v0, Lcom/adobe/reader/AdobeReader;->sHasPendingErr:Z

    return v0
.end method

.method public static ShowErrorDlg(IILcom/adobe/reader/PageView;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/adobe/reader/AdobeReader;->sHasPendingErr:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean v2, Lcom/adobe/reader/AdobeReader;->sHasPendingErr:Z

    const/high16 v0, 0x7f080000

    add-int/2addr v0, p0

    sput v0, Lcom/adobe/reader/AdobeReader;->sMsgEntryId:I

    packed-switch p1, :pswitch_data_0

    sput-boolean v1, Lcom/adobe/reader/AdobeReader;->sIsFatalErr:Z

    :goto_1
    invoke-virtual {p2}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    sget-object v0, Lcom/adobe/reader/Runnables;->showErrorDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_0
    sput-boolean v2, Lcom/adobe/reader/AdobeReader;->sIsFatalErr:Z

    goto :goto_1

    :pswitch_1
    sput-boolean v1, Lcom/adobe/reader/AdobeReader;->sIsFatalErr:Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000()Lcom/adobe/reader/AlertDlg;
    .locals 1

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswdAlert:Lcom/adobe/reader/AlertDlg;

    return-object v0
.end method

.method static synthetic access$100()Landroid/view/View;
    .locals 1

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswordView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/adobe/reader/AdobeReader;->sPasswd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/adobe/reader/AdobeReader;->sPasswdAvailable:Z

    return p0
.end method

.method static synthetic access$400(Lcom/adobe/reader/AdobeReader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/reader/AdobeReader;)V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->passwdDlgCancelled()V

    return-void
.end method

.method static synthetic access$600(Lcom/adobe/reader/AdobeReader;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mFindTextBox:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/reader/AdobeReader;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adobe/reader/AdobeReader;->sendFindMessage(Z)V

    return-void
.end method

.method private actOnIntent(Landroid/content/Intent;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/adobe/reader/AdobeReader;->getDocPathFromIntentData(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNewDocPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNewDocPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_PORTFOLIO_VIEWING:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNewDocPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_DOCUMENT_VIEWING:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/reader/AdobeReader;->sDocOpenedViaFileBrowser:Z

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mPortfolioStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->finish()V

    goto :goto_0

    :cond_3
    const v0, 0x7f080024

    const/16 v1, 0x5dc

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->NO_ACTIVITY:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->finish()V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_2

    sget-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_FILE_OPEN:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    goto :goto_0
.end method

.method private checkDeviceDimensions(FII)V
    .locals 4

    int-to-float v0, p2

    div-float/2addr v0, p1

    int-to-float v1, p3

    div-float/2addr v1, p1

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x401b000000000000L    # 6.75

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mIsRunningOnTablet:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mIsRunningOnTablet:Z

    goto :goto_0
.end method

.method private deactivateFind(Z)V
    .locals 5

    const v4, 0x7f0a0016

    const/16 v3, 0x8

    const/4 v2, 0x0

    sput-boolean v2, Lcom/adobe/reader/AdobeReader;->sIsFindActivated:Z

    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v4}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const v0, 0x7f0a0019

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->sendRemoveTextHighlightMessage()V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static deleteAllFilesInDirectory(Ljava/io/File;Z)V
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/adobe/reader/AdobeReader;->deleteAllFilesInDirectory(Ljava/io/File;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_2
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/adobe/reader/AdobeReader;->sDiskCacheSpaceUsed:J

    return-void
.end method

.method private dismissPasswdDialogAndResetPasswdAvailable()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswdAlert:Lcom/adobe/reader/AlertDlg;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswordView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v2, Lcom/adobe/reader/AdobeReader;->sPasswdAvailable:Z

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswordView:Landroid/view/View;

    const v1, 0x7f0a0031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/adobe/reader/AdobeReader;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswdAlert:Lcom/adobe/reader/AlertDlg;

    invoke-virtual {v0}, Lcom/adobe/reader/AlertDlg;->dismiss()V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->resetPasswordRequestedFlag()V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->resetNumPasswdAttempts()V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/reader/PageView;->setIsPasswdDialogNotShown(Z)V

    goto :goto_0
.end method

.method private getDocPathFromIntentData(Landroid/content/Intent;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v7

    goto :goto_0

    :cond_1
    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    :goto_1
    if-eqz v3, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_8

    move v3, v6

    goto :goto_1

    :catch_0
    move-exception v3

    move v3, v5

    goto :goto_1

    :cond_3
    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x100

    new-array v1, v1, [B

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cache_file.pdf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_5

    const/4 v4, 0x0

    const/16 v5, 0xff

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/16 v5, 0xff

    const/4 v6, 0x0

    aput-byte v6, v1, v5

    :goto_2
    const/4 v5, -0x1

    if-eq v5, v4, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v4, 0x0

    const/16 v5, 0xff

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_6
    move-object v0, v2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v7

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v0, v7

    goto/16 :goto_0

    :cond_7
    move-object v0, v7

    goto/16 :goto_0

    :cond_8
    move v3, v5

    goto/16 :goto_1
.end method

.method private getScreenDPI(Landroid/util/DisplayMetrics;)F
    .locals 6

    const/high16 v5, 0x43200000    # 160.0f

    const/high16 v4, 0x42f00000    # 120.0f

    const/4 v3, 0x1

    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    iget v2, p1, Landroid/util/DisplayMetrics;->xdpi:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    :cond_0
    const/4 v1, 0x0

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    :cond_2
    return v0

    :sswitch_0
    cmpl-float v2, v0, v5

    if-lez v2, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_1
    cmpl-float v2, v0, v4

    if-lez v2, :cond_1

    cmpg-float v2, v0, v5

    if-gtz v2, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_2
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    cmpg-float v2, v0, v4

    if-gtz v2, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getTileCachePath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sTileCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getTileFileName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sTileFileName:Ljava/lang/String;

    return-object v0
.end method

.method private inFromLeftAnimation()Landroid/view/animation/Animation;
    .locals 9

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method private inFromRightAnimation()Landroid/view/animation/Animation;
    .locals 9

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public static isTileCacheFull()Z
    .locals 4

    sget-wide v0, Lcom/adobe/reader/AdobeReader;->sDiskCacheSpaceUsed:J

    const-wide/32 v2, 0x200000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTileCacheThresholdSpaceUsed()Z
    .locals 4

    sget-wide v0, Lcom/adobe/reader/AdobeReader;->sDiskCacheSpaceUsed:J

    long-to-double v0, v0

    const-wide v2, 0x413999999999999aL    # 1677721.6

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFinish()V
    .locals 2

    sget-boolean v0, Lcom/adobe/reader/AdobeReader;->sDocOpenedViaFileBrowser:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->stopBackgroundThread()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/reader/ARFileOpen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/reader/AdobeReader;->startActivityForResult(Landroid/content/Intent;I)V

    sget-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_FILE_OPEN:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->finish()V

    goto :goto_0
.end method

.method private outToLeftAnimation()Landroid/view/animation/Animation;
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method private outToRightAnimation()Landroid/view/animation/Animation;
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method private passwdDlgCancelled()V
    .locals 1

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->dismissPasswdDialogAndResetPasswdAvailable()V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mPortfolioStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->restartPreviousPortfolio()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->onFinish()V

    goto :goto_0
.end method

.method private restartPreviousPortfolio()V
    .locals 3

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->stopBackgroundThread()V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mPortfolioStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/ARPortfolioStackEntry;

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->dismissPasswdDialogAndResetPasswdAvailable()V

    iget-object v1, v0, Lcom/adobe/reader/ARPortfolioStackEntry;->m_filename:Ljava/lang/String;

    iput-object v1, p0, Lcom/adobe/reader/AdobeReader;->mNewDocPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->setTileFileName()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/adobe/reader/AdobeReader;->sHasPendingErr:Z

    sget-object v1, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_DOCUMENT_VIEWING:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iput-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->startBackgroundThread()V

    sget-object v1, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    iget-object v2, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    iget-object v0, v0, Lcom/adobe/reader/ARPortfolioStackEntry;->m_openedPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/adobe/reader/PageView;->openDocumentAndLaunchARPortfolioUI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendFindMessage(Z)V
    .locals 2

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->isDoubleTapAnimRunning()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mIsZoomPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mIsGoToPagePerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mIsPageNavigationPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mIsSearchInProgress:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/reader/AdobeReader;->setNextPrevFindButtonsEnabled(Z)V

    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->sendShowFindProgressDialogMessage()V

    sget-object v1, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/adobe/reader/PageView;->sendFindMessage(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mIsSearchInProgress:Z

    goto :goto_0
.end method

.method public static setIsFirstPasswdAttempt()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/reader/AdobeReader;->sIsFirstPasswdAttempt:Z

    return-void
.end method

.method private setNextPrevFindButtonsEnabled(Z)V
    .locals 2

    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0a001a

    invoke-virtual {p0, v1}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method private setTileCachePath()V
    .locals 3

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getCacheDir()Ljava/io/File;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tile_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/reader/AdobeReader;->sTileCachePath:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/adobe/reader/AdobeReader;->sTileCachePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/reader/AdobeReader;->deleteAllFilesInDirectory(Ljava/io/File;Z)V

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/reader/AdobeReader;->sTileCachePath:Ljava/lang/String;

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private setTileFileName()V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/reader/AdobeReader;->sTileFileName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setUIControls()V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0017

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/adobe/reader/AdobeReader$3;

    invoke-direct {v0, p0}, Lcom/adobe/reader/AdobeReader$3;-><init>(Lcom/adobe/reader/AdobeReader;)V

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mUIElemsHandler:Landroid/os/Handler;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/PageView;

    sput-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-direct {p0, v1}, Lcom/adobe/reader/AdobeReader;->getScreenDPI(Landroid/util/DisplayMetrics;)F

    move-result v0

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v0, v2, v1}, Lcom/adobe/reader/AdobeReader;->checkDeviceDimensions(FII)V

    sget-object v1, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v1, v0}, Lcom/adobe/reader/PageView;->setDPI(F)V

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/adobe/reader/AdobeReader;->sPasswordView:Landroid/view/View;

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswordView:Landroid/view/View;

    const v1, 0x7f0a0032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswordView:Landroid/view/View;

    const v1, 0x7f0a0033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/adobe/reader/AlertDlg;

    invoke-direct {v0, p0}, Lcom/adobe/reader/AlertDlg;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adobe/reader/AdobeReader;->sPasswdAlert:Lcom/adobe/reader/AlertDlg;

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswdAlert:Lcom/adobe/reader/AlertDlg;

    invoke-virtual {v0, v3}, Lcom/adobe/reader/AlertDlg;->setCancelable(Z)V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswdAlert:Lcom/adobe/reader/AlertDlg;

    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Lcom/adobe/reader/AlertDlg;->setTitle(I)V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswdAlert:Lcom/adobe/reader/AlertDlg;

    sget-object v1, Lcom/adobe/reader/AdobeReader;->sPasswordView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/AlertDlg;->setView(Landroid/view/View;)V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswdAlert:Lcom/adobe/reader/AlertDlg;

    new-instance v1, Lcom/adobe/reader/AdobeReader$4;

    invoke-direct {v1, p0}, Lcom/adobe/reader/AdobeReader$4;-><init>(Lcom/adobe/reader/AdobeReader;)V

    invoke-virtual {v0, v1}, Lcom/adobe/reader/AlertDlg;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v0, Lcom/adobe/reader/AlertDlg;

    invoke-direct {v0, p0}, Lcom/adobe/reader/AlertDlg;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adobe/reader/AdobeReader;->sErrorDlg:Lcom/adobe/reader/AlertDlg;

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sErrorDlg:Lcom/adobe/reader/AlertDlg;

    invoke-virtual {v0, v3}, Lcom/adobe/reader/AlertDlg;->setCancelable(Z)V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sErrorDlg:Lcom/adobe/reader/AlertDlg;

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Lcom/adobe/reader/AlertDlg;->setTitle(I)V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sErrorDlg:Lcom/adobe/reader/AlertDlg;

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/adobe/reader/AlertDlg;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static showPasswordDialog()V
    .locals 2

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswdAlert:Lcom/adobe/reader/AlertDlg;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswordView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswdAlert:Lcom/adobe/reader/AlertDlg;

    invoke-virtual {v0}, Lcom/adobe/reader/AlertDlg;->show()V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswordView:Landroid/view/View;

    const v1, 0x7f0a0031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/adobe/reader/AdobeReader$5;

    invoke-direct {v1}, Lcom/adobe/reader/AdobeReader$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

.method private showScrubber()V
    .locals 4

    const/16 v3, 0x12c

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->getNumPages()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->updatePageNumberOverlayAndScrubber()V

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mScrubberBottomBarLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    mul-int/lit8 v1, v0, 0x1e

    sget-object v2, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v2}, Lcom/adobe/reader/PageView;->getScreenWidth()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mScrubber:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x1e

    if-lt v0, v3, :cond_0

    :goto_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mScrubber:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mScrubber:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mScrubber:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mScrubberBottomBarLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private updatePageNumberOverlayAndScrubber()V
    .locals 7

    const/4 v5, 0x1

    const-string v6, " / "

    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v1}, Lcom/adobe/reader/PageView;->getNumPages()I

    move-result v1

    iget-object v2, p0, Lcom/adobe/reader/AdobeReader;->mScrubber:Landroid/widget/SeekBar;

    sub-int v3, v1, v5

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    sget-object v2, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v2}, Lcom/adobe/reader/PageView;->getCurrentPageNumber()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/adobe/reader/AdobeReader;->mScrubber:Landroid/widget/SeekBar;

    sub-int/2addr v2, v5

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    sget-object v2, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v2}, Lcom/adobe/reader/PageView;->inReflowMode()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v2}, Lcom/adobe/reader/PageView;->canScrollUp()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1 / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mScrubber:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v2}, Lcom/adobe/reader/PageView;->canScrollDown()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mScrubber:Landroid/widget/SeekBar;

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public static updateTileCacheSpaceUsed(J)V
    .locals 4

    const-wide/16 v2, 0x0

    sget-wide v0, Lcom/adobe/reader/AdobeReader;->sDiskCacheSpaceUsed:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    cmp-long v0, p0, v2

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-wide v0, Lcom/adobe/reader/AdobeReader;->sDiskCacheSpaceUsed:J

    add-long/2addr v0, p0

    sput-wide v0, Lcom/adobe/reader/AdobeReader;->sDiskCacheSpaceUsed:J

    goto :goto_0
.end method


# virtual methods
.method public activateFind()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/reader/AdobeReader;->sIsFindActivated:Z

    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/TopAndBottomBar;

    invoke-virtual {v0, v2}, Lcom/adobe/reader/TopAndBottomBar;->setVisibility(I)V

    const v0, 0x7f0a0019

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mScrubberBottomBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mFindTextBox:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mFindTextBox:Landroid/widget/EditText;

    new-instance v1, Lcom/adobe/reader/AdobeReader$6;

    invoke-direct {v1, p0}, Lcom/adobe/reader/AdobeReader$6;-><init>(Lcom/adobe/reader/AdobeReader;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mFindTextBox:Landroid/widget/EditText;

    new-instance v1, Lcom/adobe/reader/AdobeReader$7;

    invoke-direct {v1, p0}, Lcom/adobe/reader/AdobeReader$7;-><init>(Lcom/adobe/reader/AdobeReader;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mFindTextBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->showUIElems()V

    return-void
.end method

.method public addDocPathToRecentlyViewed()V
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mAddDocPathToRecentlyViewed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/adobe/reader/ARFileBrowserUtils;->updateRecentFilesList(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mAddDocPathToRecentlyViewed:Z

    :cond_0
    return-void
.end method

.method public clearAnimationsForUIElems()V
    .locals 1

    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    :cond_0
    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    :cond_1
    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->inReflowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_2
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mScrubberBottomBarLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mScrubberBottomBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    :cond_3
    return-void
.end method

.method public clearCacheFiles()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mPortfolioStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cache_file.pdf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public flipAnimateToLeft()V
    .locals 8

    const v6, 0x7f0a000c

    const v5, 0x7f0a000d

    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a000b

    invoke-virtual {p0, v1}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    invoke-virtual {p0, v6}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v4

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v6}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    :goto_0
    sget-object v4, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v4}, Lcom/adobe/reader/PageView;->getCurrPageBitmapForSinglePageMode()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v3, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v3}, Lcom/adobe/reader/PageView;->getNextPageBitmapForSinglePageMode()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->inFromRightAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->outToLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showNext()V

    return-void

    :cond_0
    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_0
.end method

.method public flipAnimateToRight()V
    .locals 7

    const v5, 0x7f0a000c

    const v4, 0x7f0a000d

    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    invoke-virtual {p0, v5}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v5}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    :goto_0
    sget-object v3, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v3}, Lcom/adobe/reader/PageView;->getCurrPageBitmapForSinglePageMode()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v2, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v2}, Lcom/adobe/reader/PageView;->getPrevPageBitmapForSinglePageMode()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->inFromLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->outToRightAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    return-void

    :cond_0
    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_0
.end method

.method public getActivityPausedState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mActivityPaused:Z

    return v0
.end method

.method public getBackgroundHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mBackgroundThread:Lcom/adobe/reader/BackgroundThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mBackgroundThread:Lcom/adobe/reader/BackgroundThread;

    invoke-virtual {v0}, Lcom/adobe/reader/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_0
.end method

.method public getBackgroundThreadId()J
    .locals 2

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mBackgroundThread:Lcom/adobe/reader/BackgroundThread;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mBackgroundThread:Lcom/adobe/reader/BackgroundThread;

    invoke-virtual {v0}, Lcom/adobe/reader/BackgroundThread;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getCurrentMemoryUsage()I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    aput v1, v0, v2

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/adobe/reader/AdobeReader;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v1

    aget-object v0, v0, v2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    sub-int v0, v1, v0

    return v0
.end method

.method public getHeapSizeLimit(Z)D
    .locals 5

    const/16 v4, 0x30

    sget-wide v0, Lcom/adobe/reader/AdobeReader;->sLowerHeapLimit:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    if-le v0, v4, :cond_0

    move v0, v4

    :cond_0
    mul-int/lit16 v1, v0, 0x400

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v1, v3

    sput-wide v1, Lcom/adobe/reader/AdobeReader;->sLowerHeapLimit:D

    mul-int/lit16 v0, v0, 0x400

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    sput-wide v0, Lcom/adobe/reader/AdobeReader;->sUpperHeapLimit:D

    :cond_1
    if-eqz p1, :cond_2

    sget-wide v0, Lcom/adobe/reader/AdobeReader;->sLowerHeapLimit:D

    :goto_0
    return-wide v0

    :cond_2
    sget-wide v0, Lcom/adobe/reader/AdobeReader;->sUpperHeapLimit:D

    goto :goto_0
.end method

.method public getTopBarHeight()I
    .locals 1

    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/TopAndBottomBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/reader/TopAndBottomBar;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUIThread()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mUIThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getUIThreadId()J
    .locals 2

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mUIThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public hidePageOverlay()V
    .locals 2

    iget-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mDontHideUIElements:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x7f040000

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    sget-boolean v0, Lcom/adobe/reader/AdobeReader;->sIsFindActivated:Z

    if-nez v0, :cond_1

    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mUIElemsHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public hideUIElems(ZZ)V
    .locals 4

    const/16 v3, 0x8

    iget-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mDontHideUIElements:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->clearAnimationsForUIElems()V

    const/high16 v0, 0x7f040000

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    sget-boolean v0, Lcom/adobe/reader/AdobeReader;->sIsFindActivated:Z

    if-nez v0, :cond_6

    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-nez p2, :cond_3

    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez p1, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mScrubberBottomBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mScrubberBottomBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->inReflowMode()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez p1, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mScrubberBottomBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mUIElemsHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mShowingUIElems:Z

    goto :goto_0
.end method

.method public initializeUIElems()V
    .locals 3

    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    :try_start_0
    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isBackgroundThreadStopped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mIsBackgroundThreadStopped:Z

    return v0
.end method

.method protected isFileNameNotAvailable()Z
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "cache_file.pdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method public isRunningOnTablet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mIsRunningOnTablet:Z

    return v0
.end method

.method public isSearchInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mIsSearchInProgress:Z

    return v0
.end method

.method public isTileCacheEnabled()Z
    .locals 1

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sTileCachePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v1, "com.adobe.reader.FileBrowserReturnData"

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.adobe.reader.FileBrowserReturnData"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNewDocPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNewDocPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNewDocPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->isPortfolio()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0, v2}, Lcom/adobe/reader/PageView;->launchARPortfolioUI(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mPortfolioStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    sget-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_DOCUMENT_VIEWING:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iget-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mFileOpenViaMenu:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/adobe/reader/AdobeReader;->mFileOpenViaMenu:Z

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mFileOpenViaMenu:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_DOCUMENT_VIEWING:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iput-boolean v3, p0, Lcom/adobe/reader/AdobeReader;->mFileOpenViaMenu:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->finish()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->finish()V

    goto :goto_0

    :pswitch_1
    sparse-switch p2, :sswitch_data_1

    goto :goto_0

    :sswitch_3
    const-string v0, "com.adobe.reader.FileBrowserReturnData"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNewDocPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNewDocPath:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNewDocPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->isPortfolio()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0, v2}, Lcom/adobe/reader/PageView;->launchARPortfolioUI(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->getCurrentDirectory()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/adobe/reader/ARPortfolioStackEntry;

    iget-object v2, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/adobe/reader/ARPortfolioStackEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mPortfolioStack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->getPortfolioFileNameToOpen()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNewDocPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->stopBackgroundThread()V

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->dismissPasswdDialogAndResetPasswdAvailable()V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNewDocPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->setTileFileName()V

    sput-boolean v3, Lcom/adobe/reader/AdobeReader;->sHasPendingErr:Z

    sget-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_DOCUMENT_VIEWING:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->startBackgroundThread()V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/PageView;->openDocument(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mPortfolioStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/adobe/reader/AdobeReader;->sIsFindActivated:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/reader/AdobeReader;->deactivateFind(Z)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->onFinish()V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->restartPreviousPortfolio()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mPortfolioStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    sget-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_DOCUMENT_VIEWING:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iget-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mFileOpenViaMenu:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/adobe/reader/AdobeReader;->mFileOpenViaMenu:Z

    goto/16 :goto_0

    :sswitch_6
    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    iget-boolean v0, v0, Lcom/adobe/reader/PageView;->mShowPortfolioBrowser:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0, v2}, Lcom/adobe/reader/PageView;->launchARPortfolioUI(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
    .end sparse-switch
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/adobe/reader/AdobeReader;->sIsFindActivated:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/adobe/reader/AdobeReader;->deactivateFind(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mPortfolioStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/adobe/reader/AdobeReader;->sDocOpenedViaFileBrowser:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    sget-object v1, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_FILE_OPEN:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mFileOpenViaMenu:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/reader/ARFileOpen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v2}, Lcom/adobe/reader/AdobeReader;->startActivityForResult(Landroid/content/Intent;I)V

    sget-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_FILE_OPEN:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    :goto_1
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNonFatalErrorToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNonFatalErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->finish()V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->restartPreviousPortfolio()V

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    sget-boolean v0, Lcom/adobe/reader/AdobeReader;->sIsFatalErr:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mPortfolioStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->stopBackgroundThread()V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mPortfolioStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/ARPortfolioStackEntry;

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->dismissPasswdDialogAndResetPasswdAvailable()V

    iget-object v1, v0, Lcom/adobe/reader/ARPortfolioStackEntry;->m_filename:Ljava/lang/String;

    iput-object v1, p0, Lcom/adobe/reader/AdobeReader;->mNewDocPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->setTileFileName()V

    sput-boolean v2, Lcom/adobe/reader/AdobeReader;->sHasPendingErr:Z

    sget-object v1, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_DOCUMENT_VIEWING:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iput-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->startBackgroundThread()V

    sget-object v1, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    iget-object v2, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    iget-object v0, v0, Lcom/adobe/reader/ARPortfolioStackEntry;->m_openedPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/adobe/reader/PageView;->openDocumentAndLaunchARPortfolioUI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    sget-boolean v0, Lcom/adobe/reader/AdobeReader;->sDocOpenedViaFileBrowser:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_FILE_OPEN:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/reader/ARFileOpen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/reader/AdobeReader;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->stopBackgroundThread()V

    :cond_1
    sput-boolean v2, Lcom/adobe/reader/AdobeReader;->sHasPendingErr:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->finish()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswdAlert:Lcom/adobe/reader/AlertDlg;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswordView:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswordView:Landroid/view/View;

    const v1, 0x7f0a0031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/adobe/reader/AdobeReader;->sPasswd:Ljava/lang/String;

    sput-boolean v2, Lcom/adobe/reader/AdobeReader;->sPasswdAvailable:Z

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/adobe/reader/AdobeReader;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPasswdAlert:Lcom/adobe/reader/AlertDlg;

    invoke-virtual {v0}, Lcom/adobe/reader/AlertDlg;->dismiss()V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0, v2}, Lcom/adobe/reader/PageView;->setIsPasswdDialogNotShown(Z)V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/PageView;->openDocument(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->passwdDlgCancelled()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->activateFind()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, v2}, Lcom/adobe/reader/AdobeReader;->deactivateFind(Z)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, v3}, Lcom/adobe/reader/AdobeReader;->sendFindMessage(Z)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0, v2}, Lcom/adobe/reader/AdobeReader;->sendFindMessage(Z)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->shareDocument()V

    goto :goto_0

    :sswitch_7
    sget-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_FILE_OPEN:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iput-boolean v2, p0, Lcom/adobe/reader/AdobeReader;->mFileOpenViaMenu:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/reader/ARFileOpen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v2}, Lcom/adobe/reader/AdobeReader;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_8
    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0, v2}, Lcom/adobe/reader/PageView;->zoomOut(Z)V

    goto :goto_0

    :sswitch_9
    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0, v2}, Lcom/adobe/reader/PageView;->zoomIn(Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0012 -> :sswitch_7
        0x7f0a0013 -> :sswitch_6
        0x7f0a0014 -> :sswitch_2
        0x7f0a0017 -> :sswitch_3
        0x7f0a001a -> :sswitch_5
        0x7f0a001b -> :sswitch_4
        0x7f0a001f -> :sswitch_8
        0x7f0a0020 -> :sswitch_9
        0x7f0a0032 -> :sswitch_0
        0x7f0a0033 -> :sswitch_1
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v3

    :goto_0
    sget-object v1, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v1, v0}, Lcom/adobe/reader/PageView;->setViewMode(I)V

    if-eq v2, v0, :cond_0

    const-string v1, "com.adobe.reader.preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/adobe/reader/AdobeReader;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "lastViewMode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return v3

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    move v0, v3

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/adobe/reader/AdobeReader;->sIsFindActivated:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/adobe/reader/AdobeReader;->deactivateFind(Z)V

    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0043
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->cleanup()V

    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    :cond_0
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mPortfolioStack:Ljava/util/Stack;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->requestWindowFeature(I)Z

    invoke-static {}, Lcom/adobe/reader/ARFileBrowserUtils;->initializeFileBrowserUtils()V

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->setContentView(I)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Lcom/adobe/reader/JSurface;->calculateAndSetTileDimensions(II)V

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->setUIControls()V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mUIThread:Ljava/lang/Thread;

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/Runnables;->setPageView(Lcom/adobe/reader/PageView;)V

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->setTileCachePath()V

    new-instance v0, Lcom/adobe/reader/AdobeReader$1;

    invoke-direct {v0, p0}, Lcom/adobe/reader/AdobeReader$1;-><init>(Lcom/adobe/reader/AdobeReader;)V

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mFindProgressDialogHandler:Landroid/os/Handler;

    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mScrubber:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mScrubber:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mScrubber:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mScrubberBottomBarLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/adobe/reader/AdobeReader$2;

    invoke-direct {v0, p0}, Lcom/adobe/reader/AdobeReader$2;-><init>(Lcom/adobe/reader/AdobeReader;)V

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mScrubberHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/adobe/reader/AdobeReader;->actOnIntent(Landroid/content/Intent;Z)V

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    const v6, 0x7f0a0045

    const v5, 0x7f0a0044

    const v4, 0x7f0a0043

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->getViewMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_1
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_2
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->dismissPasswdDialogAndResetPasswdAvailable()V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sErrorDlg:Lcom/adobe/reader/AlertDlg;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sErrorDlg:Lcom/adobe/reader/AlertDlg;

    invoke-virtual {v0}, Lcom/adobe/reader/AlertDlg;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/reader/AdobeReader;->sHasPendingErr:Z

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->stopBackgroundThread()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->purgeOffscreenTiles()V

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/adobe/reader/AdobeReader;->sTileCachePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/reader/AdobeReader;->deleteAllFilesInDirectory(Ljava/io/File;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mFindTextBox:Landroid/widget/EditText;

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->sendPurgeOffscreenTilesMessage()V

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    sget-boolean v0, Lcom/adobe/reader/AdobeReader;->sHasPendingErr:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/reader/AdobeReader;->actOnIntent(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    sget-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_FILE_OPEN:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iput-boolean v3, p0, Lcom/adobe/reader/AdobeReader;->mFileOpenViaMenu:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/reader/ARFileOpen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/adobe/reader/AdobeReader;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v3

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->openContextMenu(Landroid/view/View;)V

    move v0, v3

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/reader/ARAboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const v2, 0x7f080039

    invoke-virtual {p0, v2}, Lcom/adobe/reader/AdobeReader;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a003f
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->endScroll()V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->clearAnimation()V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->disableOrientationSensor()V

    iget-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mIsSearchInProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->stopBackgroundThread()V

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mFindTextBox:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mFindTextBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mFindTextBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mActivityPaused:Z

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->getNumPages()I

    move-result v1

    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mScrubberHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mScrubberChangedDirectly:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v4, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mScrubberHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/adobe/reader/AdobeReader;->mActivityPaused:Z

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->enableOrientationSensor()V

    :cond_0
    sget-object v0, Lcom/adobe/reader/AdobeReader$9;->$SwitchMap$com$adobe$reader$AdobeReader$ACTIVITY_ENUM:[I

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    invoke-virtual {v1}, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    iget-boolean v0, v0, Lcom/adobe/reader/PageView;->mShowPortfolioBrowser:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0, v8}, Lcom/adobe/reader/PageView;->launchARPortfolioUI(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/reader/ARFileOpen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v7}, Lcom/adobe/reader/AdobeReader;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->startBackgroundThread()V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mOnSizeChangedParams:[I

    if-eqz v0, :cond_2

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mOnSizeChangedParams:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/adobe/reader/AdobeReader;->mOnSizeChangedParams:[I

    aget v2, v2, v7

    iget-object v3, p0, Lcom/adobe/reader/AdobeReader;->mOnSizeChangedParams:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/adobe/reader/AdobeReader;->mOnSizeChangedParams:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->onSizeChanged(IIII)V

    iput-object v8, p0, Lcom/adobe/reader/AdobeReader;->mOnSizeChangedParams:[I

    :cond_2
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNewDocPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNewDocPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->dismissPasswdDialogAndResetPasswdAvailable()V

    sget-boolean v0, Lcom/adobe/reader/AdobeReader;->sIsFindActivated:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v6}, Lcom/adobe/reader/AdobeReader;->deactivateFind(Z)V

    :cond_3
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNewDocPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->setTileFileName()V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/PageView;->openDocument(Ljava/lang/String;)V

    iput-boolean v7, p0, Lcom/adobe/reader/AdobeReader;->mAddDocPathToRecentlyViewed:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSearchComplete()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mFindProgressDialogHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v6, p0, Lcom/adobe/reader/AdobeReader;->mIsSearchInProgress:Z

    invoke-virtual {p0, v6}, Lcom/adobe/reader/AdobeReader;->showFindProgressDialog(Z)V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mOnSizeChangedParams:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mOnSizeChangedParams:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/adobe/reader/AdobeReader;->mOnSizeChangedParams:[I

    aget v2, v2, v7

    iget-object v3, p0, Lcom/adobe/reader/AdobeReader;->mOnSizeChangedParams:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/adobe/reader/AdobeReader;->mOnSizeChangedParams:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->onSizeChanged(IIII)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mOnSizeChangedParams:[I

    :cond_0
    invoke-direct {p0, v7}, Lcom/adobe/reader/AdobeReader;->setNextPrevFindButtonsEnabled(Z)V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->isCancelSearchRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0, v6}, Lcom/adobe/reader/PageView;->requestCancelSearch(Z)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mWasSearchSuccessful:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNoMatchFoundToastMessage:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNoMatchFoundToastMessage:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_2
    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->updatePageNumberOverlayAndScrubber()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNoMatchFoundToastMessage:Landroid/widget/Toast;

    if-nez v0, :cond_4

    const v0, 0x7f080035

    const/16 v1, 0x5dc

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNoMatchFoundToastMessage:Landroid/widget/Toast;

    :cond_4
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNoMatchFoundToastMessage:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    const/4 v2, 0x1

    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iput-boolean v2, p0, Lcom/adobe/reader/AdobeReader;->mDontHideUIElements:Z

    iput-boolean v2, p0, Lcom/adobe/reader/AdobeReader;->mScrubberChangedDirectly:Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mScrubber:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mScrubberHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/reader/AdobeReader;->hideUIElems(ZZ)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iput-boolean v2, p0, Lcom/adobe/reader/AdobeReader;->mDontHideUIElements:Z

    iput-boolean v2, p0, Lcom/adobe/reader/AdobeReader;->mScrubberChangedDirectly:Z

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mScrubberHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mScrubber:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/reader/PageView;->sendGoToPageMessage(I)V

    invoke-virtual {p0, v2}, Lcom/adobe/reader/AdobeReader;->resetTimerHandlerForUIElems(Z)V

    return-void
.end method

.method public removeAllMessagesFromBackgroundThread()V
    .locals 2

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mBackgroundThread:Lcom/adobe/reader/BackgroundThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mBackgroundThread:Lcom/adobe/reader/BackgroundThread;

    invoke-virtual {v0}, Lcom/adobe/reader/BackgroundThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public resetTimerHandlerForUIElems(Z)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->updatePageNumberOverlayAndScrubber()V

    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v1}, Lcom/adobe/reader/PageView;->getIsSwitchViewModePending()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mUIElemsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v2, v2}, Lcom/adobe/reader/AdobeReader;->hideUIElems(ZZ)V

    :goto_1
    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->inReflowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sget-object v1, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v1}, Lcom/adobe/reader/PageView;->canPerformZoomOutAgain()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sget-object v1, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v1}, Lcom/adobe/reader/PageView;->canPerformZoomInAgain()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    if-eqz p1, :cond_3

    iput v3, v0, Landroid/os/Message;->what:I

    :goto_2
    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mUIElemsHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mUIElemsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mUIElemsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    :cond_3
    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_2
.end method

.method public sendShowFindProgressDialogMessage()V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mFindProgressDialogHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setActivateFindButtonVisibility(Z)V
    .locals 1

    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDocTitle()V
    .locals 4

    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->isFileNameNotAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public setOnSizeChangedParams(IIII)V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mOnSizeChangedParams:[I

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mOnSizeChangedParams:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mOnSizeChangedParams:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mOnSizeChangedParams:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mOnSizeChangedParams:[I

    const/4 v1, 0x3

    aput p4, v0, v1

    return-void
.end method

.method public shareDocument()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/adobe/reader/AdobeReader;->mCurrentDocPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "application/pdf"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/String;

    const v3, 0x7f080037

    invoke-virtual {p0, v3}, Lcom/adobe/reader/AdobeReader;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x2b

    const/4 v1, 0x1

    sget-object v2, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-static {v0, v1, v2}, Lcom/adobe/reader/AdobeReader;->ShowErrorDlg(IILcom/adobe/reader/PageView;)V

    goto :goto_0
.end method

.method public showErrorDlg()V
    .locals 2

    sget v0, Lcom/adobe/reader/AdobeReader;->sMsgEntryId:I

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/adobe/reader/AdobeReader;->sIsFatalErr:Z

    if-nez v1, :cond_2

    const/16 v1, 0x5dc

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNonFatalErrorToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mNonFatalErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/reader/AdobeReader;->sHasPendingErr:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mPortfolioStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_PORTFOLIO_VIEWING:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    :cond_1
    return-void

    :cond_2
    sget-object v1, Lcom/adobe/reader/AdobeReader;->sErrorDlg:Lcom/adobe/reader/AlertDlg;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/adobe/reader/AdobeReader;->sErrorDlg:Lcom/adobe/reader/AlertDlg;

    invoke-virtual {v1, v0}, Lcom/adobe/reader/AlertDlg;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sErrorDlg:Lcom/adobe/reader/AlertDlg;

    invoke-virtual {v0}, Lcom/adobe/reader/AlertDlg;->show()V

    goto :goto_0
.end method

.method public showFindProgressDialog(Z)V
    .locals 2

    if-eqz p1, :cond_1

    new-instance v0, Lcom/adobe/reader/AdobeReader$8;

    invoke-direct {v0, p0, p0}, Lcom/adobe/reader/AdobeReader$8;-><init>(Lcom/adobe/reader/AdobeReader;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mFindProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mFindProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080034

    invoke-virtual {p0, v1}, Lcom/adobe/reader/AdobeReader;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mFindProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mFindProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mFindProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mFindProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mFindProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method protected showOrHideUIElemsForTap()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mShowingUIElems:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/adobe/reader/AdobeReader;->hideUIElems(ZZ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->showUIElems()V

    goto :goto_0
.end method

.method public showUIElems()V
    .locals 5

    const v4, 0x7f0a001e

    const v3, 0x7f0a0014

    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mShowingUIElems:Z

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->clearAnimationsForUIElems()V

    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget-boolean v0, Lcom/adobe/reader/AdobeReader;->sIsFindActivated:Z

    if-nez v0, :cond_0

    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/TopAndBottomBar;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/TopAndBottomBar;->setVisibility(I)V

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->inReflowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mScrubberBottomBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/adobe/reader/AdobeReader;->resetTimerHandlerForUIElems(Z)V

    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/adobe/reader/AdobeReader;->showScrubber()V

    goto :goto_0
.end method

.method public startBackgroundThread()V
    .locals 2

    new-instance v0, Lcom/adobe/reader/BackgroundThread;

    sget-object v1, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    invoke-direct {v0, v1}, Lcom/adobe/reader/BackgroundThread;-><init>(Lcom/adobe/reader/PageView;)V

    iput-object v0, p0, Lcom/adobe/reader/AdobeReader;->mBackgroundThread:Lcom/adobe/reader/BackgroundThread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/reader/AdobeReader;->mIsBackgroundThreadStopped:Z

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mBackgroundThread:Lcom/adobe/reader/BackgroundThread;

    invoke-virtual {v0}, Lcom/adobe/reader/BackgroundThread;->start()V

    invoke-static {}, Ljava/lang/Thread;->yield()V

    return-void
.end method

.method public stopBackgroundThread()V
    .locals 2

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mBackgroundThread:Lcom/adobe/reader/BackgroundThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mBackgroundThread:Lcom/adobe/reader/BackgroundThread;

    invoke-virtual {v0}, Lcom/adobe/reader/BackgroundThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->removeAllMessagesFromBackgroundThread()V

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/reader/AdobeReader;->mIsBackgroundThreadStopped:Z

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :try_start_0
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader;->mBackgroundThread:Lcom/adobe/reader/BackgroundThread;

    invoke-virtual {v0}, Lcom/adobe/reader/BackgroundThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
