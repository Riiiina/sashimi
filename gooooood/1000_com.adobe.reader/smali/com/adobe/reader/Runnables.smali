.class public Lcom/adobe/reader/Runnables;
.super Ljava/lang/Object;


# static fields
.field public static adjustScrollBarRunnable:Ljava/lang/Runnable;

.field private static mPageView:Lcom/adobe/reader/PageView;

.field public static resetTimerHandlerForUIElemsRunnable:Ljava/lang/Runnable;

.field public static showErrorDialogRunnable:Ljava/lang/Runnable;

.field public static showPassworDialogRunnable:Ljava/lang/Runnable;

.field public static showScrollbarsRunnable:Ljava/lang/Runnable;

.field public static showUIElemsRunnable:Ljava/lang/Runnable;

.field public static textSearchComplete:Ljava/lang/Runnable;

.field public static updateZoomButtonsOnDoubleTapRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/adobe/reader/Runnables$1;

    invoke-direct {v0}, Lcom/adobe/reader/Runnables$1;-><init>()V

    sput-object v0, Lcom/adobe/reader/Runnables;->adjustScrollBarRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/adobe/reader/Runnables$2;

    invoke-direct {v0}, Lcom/adobe/reader/Runnables$2;-><init>()V

    sput-object v0, Lcom/adobe/reader/Runnables;->resetTimerHandlerForUIElemsRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/adobe/reader/Runnables$3;

    invoke-direct {v0}, Lcom/adobe/reader/Runnables$3;-><init>()V

    sput-object v0, Lcom/adobe/reader/Runnables;->showScrollbarsRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/adobe/reader/Runnables$4;

    invoke-direct {v0}, Lcom/adobe/reader/Runnables$4;-><init>()V

    sput-object v0, Lcom/adobe/reader/Runnables;->showUIElemsRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/adobe/reader/Runnables$5;

    invoke-direct {v0}, Lcom/adobe/reader/Runnables$5;-><init>()V

    sput-object v0, Lcom/adobe/reader/Runnables;->showErrorDialogRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/adobe/reader/Runnables$6;

    invoke-direct {v0}, Lcom/adobe/reader/Runnables$6;-><init>()V

    sput-object v0, Lcom/adobe/reader/Runnables;->showPassworDialogRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/adobe/reader/Runnables$7;

    invoke-direct {v0}, Lcom/adobe/reader/Runnables$7;-><init>()V

    sput-object v0, Lcom/adobe/reader/Runnables;->textSearchComplete:Ljava/lang/Runnable;

    new-instance v0, Lcom/adobe/reader/Runnables$8;

    invoke-direct {v0}, Lcom/adobe/reader/Runnables$8;-><init>()V

    sput-object v0, Lcom/adobe/reader/Runnables;->updateZoomButtonsOnDoubleTapRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/adobe/reader/PageView;
    .locals 1

    sget-object v0, Lcom/adobe/reader/Runnables;->mPageView:Lcom/adobe/reader/PageView;

    return-object v0
.end method

.method public static setPageView(Lcom/adobe/reader/PageView;)V
    .locals 0

    sput-object p0, Lcom/adobe/reader/Runnables;->mPageView:Lcom/adobe/reader/PageView;

    return-void
.end method
