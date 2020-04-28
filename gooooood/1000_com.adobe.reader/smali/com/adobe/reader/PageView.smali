.class public Lcom/adobe/reader/PageView;
.super Landroid/view/View;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/reader/PageView$CanvasWrapper;
    }
.end annotation


# static fields
.field private static final APP_LIBRARY_PATH:Ljava/lang/String; = "/data/data/com.adobe.reader/lib/libAdobeReader.so"

.field private static final BOTH_ENABLED:I = 0x3

.field public static final CONTINUOUS:I = 0x1

.field public static final DONT_SHOW_BOTTOM_BAR:I = 0x2

.field private static final DOUBLE_TAP_ANIM_SCALING_FACTOR:F = 0.9f

.field private static final DOUBLE_TAP_ZOOM_NATIVE:I = 0x2

.field private static final DPAD_SCROLL_FACTOR:I = 0xa

.field private static final DURATION_OF_ANIMATION:I = 0xa

.field private static final DURATION_OF_ANIMATION_FOR_REFLOW:I = 0x15e

.field private static final DURATION_OF_DOUBLE_TAP_ZOOM_IN_ANIMATION:I = 0x1e0

.field private static final DURATION_OF_DOUBLE_TAP_ZOOM_OUT_ANIMATION:I = 0x19

.field private static final DURATION_OF_LIMIT_ANIMATION:I = 0xfa

.field public static final DURATION_SIZE_CHANGE_MSG_RESEND:I = 0x32

.field public static final EPSILON_FOR_DOUBLE_COMPARISON:D = 0.005

.field private static final GROW:I = 0x1

.field private static final GUTTER_COLOR:I = 0xc0c0c0

.field private static final HOTSPOT_FACTOR:F = 0.18f

.field private static final HOTSPOT_MAX_LIMIT:D = 150.0

.field public static final LIMIT_IN_MEM_TILES:I = 0x5

.field private static final MAX_DIST_MOVED_SINCELAST_X:I = 0x32

.field private static final MAX_DIST_MOVED_SINCELAST_Y:I = 0x32

.field public static final MAX_SLEEP_COUNER_ZOOM_OPERATION:I = 0x3

.field private static final MIN_DIST_PINCH_PTS_X:I = 0xa

.field private static final MIN_DIST_PINCH_PTS_Y:I = 0xa

.field private static final NATIVE_DOC_ZOOM:I = 0x3

.field private static final NATIVE_DOC_ZOOM_INTERVAL:I = 0x190

.field public static final NA_MIME_TYPE:Ljava/lang/String; = "NONE"

.field public static final NEXT_PAGE:I = 0x2

.field private static final NONE_ENABLED:I = 0x0

.field public static final ORIENTATION_INVALID_VAL:I = -0x3e8

.field public static final ORIENTATION_LANDSCAPE_LEFT:I = 0x1

.field public static final ORIENTATION_LANDSCAPE_RIGHT:I = -0x1

.field public static final ORIENTATION_PORTRAIT_TOP:I = 0x0

.field private static final PAGE_FLIP_FLING_THRESHOLD:I = 0x1f4

.field private static final PAGE_FLIP_IGNORE_Y_THRESHOLD:I = 0x5

.field private static final PAINT_SCROLLED_REGION:I = 0x1

.field private static final PINCH_BOUNCE_FACTOR:F = 1.1f

.field private static final PINCH_DISTANCE_THRESHOLD:I = 0x5

.field private static final PINCH_DISTANCE_THRESHOLD_FOR_REFLOW:I = 0x14

.field private static final PINCH_ZOOM_ADJUSTMENT_FACTOR:F = 1.5f

.field private static final PINCH_ZOOM_PRECISION:F = 1000.0f

.field public static final PREFETCH_COUNT:I = 0x14

.field public static final PREFETCH_TILE_LEFT:Ljava/lang/String; = "PREFETCH_LEFT"

.field public static final PREFETCH_TILE_PIVOT_X:Ljava/lang/String; = "PREFETCH_PIVOT_X"

.field public static final PREFETCH_TILE_PIVOT_Y:Ljava/lang/String; = "PREFETCH_PIVOT_Y"

.field public static final PREFETCH_TILE_TOP:Ljava/lang/String; = "PREFETCH_TOP"

.field public static final PREVIOUS_PAGE:I = 0x1

.field private static final REFLOW_LIMIT_ANIM_START_ZOOMIN_LEVEL:F = 1.1f

.field private static final REFLOW_LIMIT_ANIM_START_ZOOMOUT_LEVEL:F = 0.9f

.field public static final REFLOW_TEXT:I = 0x3

.field private static final SEND_SCROLL_MESSAGE_DELAY:I = 0xc8

.field public static final SHOW_BOTTOM_BAR:I = 0x1

.field private static final SHRINK:I = -0x1

.field public static final SINGLE_PAGE:I = 0x2

.field public static final SLEEP_TIME_PAGE_NAVIGATION_OPERATION:I = 0x64

.field public static final SLEEP_TIME_ZOOM_OPERATION:I = 0x3e8

.field private static final TIME_BEFORE_ALLOWING_PAGE_FLIP_WITH_FLING_IN_SINGLE_PAGE:I = 0x64

.field private static final TIME_BEFORE_ALLOWING_ZOOM_AFTER_FLING_IN_REFLOW:I = 0x3e8

.field private static final TRACKBALL_MULTIPLIER:I = 0xf

.field public static final ZOOM_IN:I = 0x1

.field private static final ZOOM_IN_ENABLED:I = 0x1

.field public static final ZOOM_OUT:I = 0x2

.field private static final ZOOM_OUT_ENABLED:I = 0x2

.field private static final ZOOM_OUT_THROTTLE_FACTOR:F = 1.25f

.field private static mCanPerformZoomInAgain:Z

.field private static mCanPerformZoomOutAgain:Z

.field private static m_paint:Landroid/graphics/Paint;


# instance fields
.field private mARWin:J

.field private mCanPerformPrefetch:Z

.field private mCancelSearchRequested:Z

.field private mCommonRect:Landroid/graphics/Rect;

.field private mCurrentOffscreenRect:Landroid/graphics/Rect;

.field private mCurrentOrientation:I

.field private mCurrentPage:I

.field private mCurrentZoomLevel:D

.field private mCurrentZoomLevelOnScreen:F

.field private mDPI:F

.field private mDidOrientationChange:Z

.field private mDistanceBeforePinch:F

.field private mDocOpened:Z

.field private mDocPath:Ljava/lang/String;

.field private mDoubleTapAnimCurrentScale:F

.field private mDoubleTapAnimFinalScale:F

.field private mDoubleTapX:D

.field private mDoubleTapY:D

.field private mDoubleTapZoomLevel:D

.field private mGalleyDims:[I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHasUniformPages:Z

.field private mHighlightXMax:I

.field private mHighlightXMin:I

.field private mHighlightYMax:I

.field private mHighlightYMin:I

.field private mHorizontalGutter:I

.field private mInitialPageGap:D

.field private mIsDocViewDrawnOnce:Z

.field protected mIsGoToPagePerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsOffscreenDirty:Z

.field protected mIsPageNavigationPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsPasswdDialogNotShown:Z

.field private mIsPinchZoomLimitAnimationRunning:Z

.field private mIsPortfolioDoc:Z

.field private mIsRunningDoubleTapAnim:Z

.field private mIsRunningOrientationChangeAnim:Z

.field private mIsScrolling:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsShrink:Z

.field protected mIsZoomPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastFlingGestureInReflowTime:J

.field private mLastPinchGestureTime:J

.field private mLastScrollTimeInSinglePage:J

.field private mMaxZoomLevel:D

.field private mMaxZoomLevelOnScreen:F

.field private mMinZoomLevel:D

.field private mMinZoomLevelOnScreen:F

.field private mNumPages:I

.field private mOffscreenHeight:I

.field private mOffscreenPixels:[I

.field private mOffscreenPos:[I

.field private mOffscreenWidth:I

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mP1Begin:Landroid/graphics/Point;

.field private mP1Cur:Landroid/graphics/Point;

.field private mP1Init:Landroid/graphics/Point;

.field private mP1Prev:Landroid/graphics/Point;

.field private mP2Begin:Landroid/graphics/Point;

.field private mP2Cur:Landroid/graphics/Point;

.field private mP2Init:Landroid/graphics/Point;

.field private mP2Prev:Landroid/graphics/Point;

.field private mPagesHeight:[D

.field private mPagesWidth:[D

.field private mPaintRect:Landroid/graphics/Rect;

.field private mPinchIsPurgePerfomed:Z

.field private mPivotPoint:Landroid/graphics/Point;

.field private mPortfolioBrowserDirectory:Ljava/lang/String;

.field private mPortfolioOpenFileName:Ljava/lang/String;

.field private mPortfolioOutputStream:Ljava/io/OutputStream;

.field private mPrevOrientation:I

.field private mReflowBitmap:Landroid/graphics/Bitmap;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mScrollXYPos:[Ljava/util/concurrent/atomic/AtomicInteger;

.field private mScrolledOffscreenRect:Landroid/graphics/Rect;

.field private mScroller:Landroid/widget/Scroller;

.field public mShowPortfolioBrowser:Z

.field private mStoredBitmapRect:Landroid/graphics/Rect;

.field private mSwitchViewModePending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTileRect:Landroid/graphics/Rect;

.field private mTimerHandler:Landroid/os/Handler;

.field private mVerticalGutter:I

.field private mViewMode:I

.field private mXGutterArray:[I

.field private mYGutterArray:[I

.field private mZoomLevelChanged:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mZoomLevels:[D

.field private m_canvasWrapper:Lcom/adobe/reader/PageView$CanvasWrapper;

.field private m_rect:Landroid/graphics/Rect;

.field private m_reflowIsTileDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m_surface:Lcom/adobe/reader/JSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :try_start_0
    const-string v1, "/data/data/com.adobe.reader/lib/libAdobeReader.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    invoke-static {}, Lcom/adobe/reader/PageView;->getLibraryVersion()I

    move-result v1

    const v2, 0x9f9e

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_1
    const-string v1, "AdobeReader"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/adobe/reader/PageView;->m_paint:Landroid/graphics/Paint;

    sput-boolean v3, Lcom/adobe/reader/PageView;->mCanPerformZoomInAgain:Z

    sput-boolean v3, Lcom/adobe/reader/PageView;->mCanPerformZoomOutAgain:Z

    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/reader/PageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/reader/PageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/16 v6, -0x3e8

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/adobe/reader/PageView;->mDocOpened:Z

    iput-boolean v2, p0, Lcom/adobe/reader/PageView;->mIsOffscreenDirty:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mIsScrolling:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v2, p0, Lcom/adobe/reader/PageView;->mHasUniformPages:Z

    iput v6, p0, Lcom/adobe/reader/PageView;->mCurrentOrientation:I

    iput v6, p0, Lcom/adobe/reader/PageView;->mPrevOrientation:I

    iput-object v3, p0, Lcom/adobe/reader/PageView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    iput-boolean v1, p0, Lcom/adobe/reader/PageView;->mDidOrientationChange:Z

    iput-boolean v2, p0, Lcom/adobe/reader/PageView;->mIsPasswdDialogNotShown:Z

    iput-wide v4, p0, Lcom/adobe/reader/PageView;->mLastPinchGestureTime:J

    iput-wide v4, p0, Lcom/adobe/reader/PageView;->mLastFlingGestureInReflowTime:J

    iput-boolean v1, p0, Lcom/adobe/reader/PageView;->mIsRunningOrientationChangeAnim:Z

    iput-boolean v1, p0, Lcom/adobe/reader/PageView;->mIsRunningDoubleTapAnim:Z

    iput-boolean v1, p0, Lcom/adobe/reader/PageView;->mIsPinchZoomLimitAnimationRunning:Z

    iput-boolean v1, p0, Lcom/adobe/reader/PageView;->mIsShrink:Z

    iput-boolean v1, p0, Lcom/adobe/reader/PageView;->mPinchIsPurgePerfomed:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->m_reflowIsTileDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mZoomLevelChanged:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mScrollXYPos:[Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mSwitchViewModePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v2, p0, Lcom/adobe/reader/PageView;->mCanPerformPrefetch:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mIsZoomPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mIsPageNavigationPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mIsGoToPagePerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v2, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    iput v1, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    iput-wide v4, p0, Lcom/adobe/reader/PageView;->mLastScrollTimeInSinglePage:J

    iput-boolean v1, p0, Lcom/adobe/reader/PageView;->mCancelSearchRequested:Z

    iput v1, p0, Lcom/adobe/reader/PageView;->mHighlightXMin:I

    iput v1, p0, Lcom/adobe/reader/PageView;->mHighlightYMin:I

    iput v1, p0, Lcom/adobe/reader/PageView;->mHighlightXMax:I

    iput v1, p0, Lcom/adobe/reader/PageView;->mHighlightYMax:I

    iput-object v3, p0, Lcom/adobe/reader/PageView;->mPortfolioOutputStream:Ljava/io/OutputStream;

    iput-object v3, p0, Lcom/adobe/reader/PageView;->mPortfolioOpenFileName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/adobe/reader/PageView;->mIsPortfolioDoc:Z

    iput-boolean v1, p0, Lcom/adobe/reader/PageView;->mShowPortfolioBrowser:Z

    iput-object v3, p0, Lcom/adobe/reader/PageView;->mPortfolioBrowserDirectory:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->initializePageView()V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/reader/PageView;Landroid/graphics/Rect;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/adobe/reader/PageView;->sendPaintTilesMessage(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/reader/PageView;)[I
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    return-object v0
.end method

.method static synthetic access$1000(Lcom/adobe/reader/PageView;)J
    .locals 2

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/adobe/reader/PageView;JIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/adobe/reader/PageView;->paintRect(JIIII)V

    return-void
.end method

.method static synthetic access$1200(Lcom/adobe/reader/PageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->sendDoubleTapZoomMessage()V

    return-void
.end method

.method static synthetic access$1300(Lcom/adobe/reader/PageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->sendNativeDocZoomMessage()V

    return-void
.end method

.method static synthetic access$1400(Lcom/adobe/reader/PageView;)I
    .locals 1

    iget v0, p0, Lcom/adobe/reader/PageView;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$1402(Lcom/adobe/reader/PageView;I)I
    .locals 0

    iput p1, p0, Lcom/adobe/reader/PageView;->mCurrentOrientation:I

    return p1
.end method

.method static synthetic access$1502(Lcom/adobe/reader/PageView;I)I
    .locals 0

    iput p1, p0, Lcom/adobe/reader/PageView;->mPrevOrientation:I

    return p1
.end method

.method static synthetic access$1602(Lcom/adobe/reader/PageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/reader/PageView;->mDidOrientationChange:Z

    return p1
.end method

.method static synthetic access$1700()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lcom/adobe/reader/PageView;->m_paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/reader/PageView;)I
    .locals 1

    iget v0, p0, Lcom/adobe/reader/PageView;->mOffscreenWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/adobe/reader/PageView;)I
    .locals 1

    iget v0, p0, Lcom/adobe/reader/PageView;->mOffscreenHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mCurrentOffscreenRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mScrolledOffscreenRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/reader/PageView;)[I
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mOffscreenPixels:[I

    return-object v0
.end method

.method static synthetic access$702(Lcom/adobe/reader/PageView;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/adobe/reader/PageView;->mOffscreenPixels:[I

    return-object p1
.end method

.method static synthetic access$800(Lcom/adobe/reader/PageView;)Lcom/adobe/reader/JSurface;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private areTilesWithinRectAvailable(Landroid/graphics/Rect;)Z
    .locals 17

    const/4 v1, 0x1

    sget v2, Lcom/adobe/reader/JSurface;->sTileWidth:I

    sget v3, Lcom/adobe/reader/JSurface;->sTileHeight:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v4, v0

    div-int/2addr v4, v2

    mul-int/2addr v4, v2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    div-int/2addr v5, v3

    mul-int/2addr v5, v3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v6, v0

    sub-int/2addr v6, v4

    int-to-double v6, v6

    int-to-double v8, v2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    sub-int/2addr v7, v5

    int-to-double v7, v7

    int-to-double v9, v3

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    const/4 v8, 0x0

    move/from16 v16, v8

    move v8, v1

    move/from16 v1, v16

    :goto_0
    if-ge v1, v7, :cond_4

    if-eqz v8, :cond_4

    const/4 v9, 0x0

    move/from16 v16, v9

    move v9, v8

    move/from16 v8, v16

    :goto_1
    if-ge v8, v6, :cond_3

    if-eqz v9, :cond_3

    mul-int v10, v8, v2

    add-int/2addr v10, v4

    mul-int v11, v1, v3

    add-int/2addr v11, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v12, v0

    iget-object v12, v12, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v12

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    move-object v14, v0

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-virtual {v13, v10, v11, v14}, Lcom/adobe/reader/JSurface;->getTile(III)Lcom/adobe/reader/Tile;

    move-result-object v10

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_2

    monitor-enter v10

    :try_start_1
    invoke-virtual {v10}, Lcom/adobe/reader/Tile;->isInMemory()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v10}, Lcom/adobe/reader/Tile;->isOnDisk()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v10}, Lcom/adobe/reader/Tile;->loadFromDisk()V

    :cond_0
    invoke-virtual {v10}, Lcom/adobe/reader/Tile;->isInMemory()Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v9, 0x0

    :cond_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v8, v9

    goto :goto_0

    :cond_4
    return v8
.end method

.method private blitTilesToScreen(Landroid/graphics/Canvas;Landroid/graphics/Rect;)Z
    .locals 22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mViewMode:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mReflowBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mReflowBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    monitor-enter v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mReflowBitmap:Landroid/graphics/Bitmap;

    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v10, v0

    iget v10, v10, Lcom/adobe/reader/JSurface;->m_width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v11, v0

    iget v11, v11, Lcom/adobe/reader/JSurface;->m_height:I

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v11, v0

    iget v11, v11, Lcom/adobe/reader/JSurface;->m_width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v12, v0

    iget v12, v12, Lcom/adobe/reader/JSurface;->m_height:I

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v9, Lcom/adobe/reader/PageView;->m_paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mReflowBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_reflowIsTileDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/reader/PageView;->invalidate()V

    const/4 v5, 0x1

    :cond_1
    :goto_0
    return v5

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :cond_2
    const/4 v5, -0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/adobe/reader/PageView;->invalidate()V

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    sget-boolean v6, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    if-eqz v6, :cond_1

    sget v6, Lcom/adobe/reader/JSurface;->sTileWidth:I

    sget v7, Lcom/adobe/reader/JSurface;->sTileHeight:I

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v9, v0

    div-int/2addr v9, v6

    mul-int/2addr v9, v6

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v10, v0

    div-int/2addr v10, v7

    mul-int/2addr v10, v7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v11, v0

    add-int v12, v9, v6

    sub-int/2addr v11, v12

    int-to-double v11, v11

    int-to-double v13, v6

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v12, v0

    add-int v13, v10, v7

    sub-int/2addr v12, v13

    int-to-double v12, v12

    int-to-double v14, v7

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    move/from16 v21, v13

    move v13, v5

    move/from16 v5, v21

    :goto_1
    if-ge v5, v12, :cond_c

    const/4 v14, 0x0

    move/from16 v21, v14

    move v14, v13

    move/from16 v13, v21

    :goto_2
    if-ge v13, v11, :cond_b

    mul-int v15, v13, v6

    add-int/2addr v15, v9

    mul-int v16, v5, v7

    add-int v16, v16, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    add-int v18, v15, v6

    add-int v19, v16, v7

    move-object/from16 v0, v17

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    move-object/from16 v0, v18

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/reader/JSurface;->getTile(III)Lcom/adobe/reader/Tile;

    move-result-object v18

    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v18, :cond_a

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-eqz v17, :cond_8

    sget-object v17, Lcom/adobe/reader/ARBitmapPool;->sListAvailableBitmap:Ljava/util/LinkedList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v17

    if-lez v17, :cond_7

    monitor-enter v18

    :try_start_3
    invoke-virtual/range {v18 .. v18}, Lcom/adobe/reader/Tile;->loadFromDisk()V

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/adobe/reader/PageView;->sendSaveTilesMessage(II)V

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    move-object v15, v0

    if-nez v15, :cond_5

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    move-object v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->paintEmptyPages(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    :cond_5
    :goto_3
    monitor-enter v18

    :try_start_4
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    move-object v15, v0

    if-eqz v15, :cond_9

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    sget-object v17, Lcom/adobe/reader/PageView;->m_paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object v1, v15

    move-object v2, v8

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_4
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/adobe/reader/Tile;->mIsDirty:Z

    move v15, v0

    if-eqz v15, :cond_6

    const/4 v14, 0x1

    :cond_6
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    :catchall_1
    move-exception v5

    :try_start_5
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5

    :catchall_2
    move-exception v5

    :try_start_6
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v5

    :cond_7
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/adobe/reader/PageView;->sendLoadTileMessage(II)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    move-object v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->paintEmptyPages(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    goto :goto_3

    :cond_8
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    move-object v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->paintEmptyPages(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    goto :goto_3

    :cond_9
    const/4 v14, 0x1

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    move-object v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->paintEmptyPages(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    goto :goto_4

    :catchall_3
    move-exception v5

    monitor-exit v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v5

    :cond_a
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    move-object v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->paintEmptyPages(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    goto :goto_5

    :cond_b
    add-int/lit8 v5, v5, 0x1

    move v13, v14

    goto/16 :goto_1

    :cond_c
    if-nez v13, :cond_d

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mViewMode:I

    move v6, v0

    if-eq v5, v6, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/adobe/reader/PageView;->sendPrefetchMessage(Landroid/graphics/Rect;)V

    :cond_d
    move v5, v13

    goto/16 :goto_0
.end method

.method private cacheTileForFirstScreen(IZ)V
    .locals 12

    const/4 v11, 0x0

    sget v0, Lcom/adobe/reader/JSurface;->sTileWidth:I

    sget v1, Lcom/adobe/reader/JSurface;->sTileHeight:I

    iget v2, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    int-to-double v2, v2

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    int-to-double v3, v3

    int-to-double v5, v1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {v4}, Lcom/adobe/reader/JSurface;->releasePrevPageTiles()V

    :goto_0
    iget-wide v4, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    iget-wide v6, p0, Lcom/adobe/reader/PageView;->mMinZoomLevel:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f747ae147ae147bL    # 0.005

    cmpg-double v4, v4, v6

    if-gez v4, :cond_8

    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    mul-int v5, v2, v3

    new-array v5, v5, [Lcom/adobe/reader/Tile;

    iput-object v5, v4, Lcom/adobe/reader/JSurface;->mPrevPageTiles:[Lcom/adobe/reader/Tile;

    iget-object v4, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v4, v4, Lcom/adobe/reader/JSurface;->mPrevPageTiles:[Lcom/adobe/reader/Tile;

    :goto_1
    move v5, v11

    :goto_2
    if-ge v5, v2, :cond_7

    move v6, v11

    :goto_3
    if-ge v6, v3, :cond_6

    mul-int v7, v5, v0

    mul-int v8, v6, v1

    iget-object v9, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v10, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    aget v10, v10, v11

    invoke-virtual {v9, v7, v8, v10}, Lcom/adobe/reader/JSurface;->getIndex(III)I

    move-result v7

    iget-object v8, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v8, v8, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v8

    :try_start_0
    iget-object v9, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v9, v9, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v9, v9, v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_0

    iget-object v8, v9, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_3

    :cond_0
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_1
    iget-object v4, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {v4}, Lcom/adobe/reader/JSurface;->releaseNextPageTiles()V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    mul-int v5, v2, v3

    new-array v5, v5, [Lcom/adobe/reader/Tile;

    iput-object v5, v4, Lcom/adobe/reader/JSurface;->mNextPageTiles:[Lcom/adobe/reader/Tile;

    iget-object v4, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v4, v4, Lcom/adobe/reader/JSurface;->mNextPageTiles:[Lcom/adobe/reader/Tile;

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    if-eqz v4, :cond_5

    monitor-enter v4

    mul-int v8, v5, v3

    add-int/2addr v8, v6

    :try_start_2
    aget-object v8, v4, v8

    if-eqz v8, :cond_4

    mul-int v8, v5, v3

    add-int/2addr v8, v6

    aget-object v8, v4, v8

    invoke-virtual {v8}, Lcom/adobe/reader/Tile;->releaseBitmap()V

    :cond_4
    mul-int v8, v5, v3

    add-int/2addr v8, v6

    aput-object v9, v4, v8

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_5
    iget-object v8, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v8, v8, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v8

    :try_start_3
    iget-object v9, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v9, v9, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    const/4 v10, 0x0

    aput-object v10, v9, v7

    iget-object v7, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget v9, v7, Lcom/adobe/reader/JSurface;->mNumTiles:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    iput v9, v7, Lcom/adobe/reader/JSurface;->mNumTiles:I

    monitor-exit v8

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_5
    invoke-virtual {v9}, Lcom/adobe/reader/Tile;->releaseBitmap()V

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget v1, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    iput v1, v0, Lcom/adobe/reader/JSurface;->mPageNumForPrevPageTiles:I

    :cond_8
    :goto_6
    return-void

    :cond_9
    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget v1, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    iput v1, v0, Lcom/adobe/reader/JSurface;->mPageNumForNextPageTiles:I

    goto :goto_6
.end method

.method private native changeDirectory(JLjava/lang/String;)Z
.end method

.method private checkForZoomChangeMessages()Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private closeDocument()V
    .locals 2

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->clearAllTiles()V

    :cond_0
    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->closeDocument(J)V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->clearCacheFiles()V

    return-void
.end method

.method private native closeDocument(J)V
.end method

.method private native createARWindow(FIIIIZ)J
.end method

.method private native destroyARWindow(J)V
.end method

.method private native doubleTapZoom(JDDD)I
.end method

.method private ensureMemoryAvailable(IIIII)Z
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    if-ne v9, p5, :cond_6

    move v1, v8

    :goto_0
    sget-object v2, Lcom/adobe/reader/ARBitmapPool;->sListAvailableBitmap:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v0, v8

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->isTileCacheEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->getNumTilesToBeFreed()I

    move-result v2

    if-nez v2, :cond_5

    move v0, v8

    goto :goto_1

    :goto_2
    if-ge v1, v2, :cond_4

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    aget v4, v4, v7

    invoke-direct {p0, p1, p2, v4, p5}, Lcom/adobe/reader/PageView;->saveTileToDisk(IIII)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    move v3, v8

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v3, v7

    goto :goto_3

    :cond_3
    if-ne v9, p5, :cond_4

    iget-object v3, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v3, v3, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v4, p3, p4, v5, v6}, Lcom/adobe/reader/JSurface;->purgeTiles(IIIZ)Z

    monitor-exit v3

    move v3, v8

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    move v3, v1

    move v1, v7

    goto :goto_2

    :cond_6
    move v1, v7

    goto :goto_0
.end method

.method private fetchTileFromPrevNextCache(I)V
    .locals 13

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mPrevPageTiles:[Lcom/adobe/reader/Tile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget v0, v0, Lcom/adobe/reader/JSurface;->mPageNumForPrevPageTiles:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mPrevPageTiles:[Lcom/adobe/reader/Tile;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iput-object v2, v1, Lcom/adobe/reader/JSurface;->mPrevPageTiles:[Lcom/adobe/reader/Tile;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iput v3, v1, Lcom/adobe/reader/JSurface;->mPageNumForPrevPageTiles:I

    :goto_0
    if-nez v0, :cond_2

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mNextPageTiles:[Lcom/adobe/reader/Tile;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget v0, v0, Lcom/adobe/reader/JSurface;->mPageNumForNextPageTiles:I

    if-ne v0, p1, :cond_5

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mNextPageTiles:[Lcom/adobe/reader/Tile;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iput-object v2, v1, Lcom/adobe/reader/JSurface;->mNextPageTiles:[Lcom/adobe/reader/Tile;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iput v3, v1, Lcom/adobe/reader/JSurface;->mPageNumForNextPageTiles:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/adobe/reader/JSurface;->sTileWidth:I

    sget v2, Lcom/adobe/reader/JSurface;->sTileHeight:I

    iget v3, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    int-to-double v3, v3

    int-to-double v5, v1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    int-to-double v4, v4

    int-to-double v6, v2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    move v5, v12

    :goto_1
    if-ge v5, v3, :cond_0

    move v6, v12

    :goto_2
    if-ge v6, v4, :cond_4

    mul-int v7, v5, v1

    mul-int v8, v6, v2

    mul-int v9, v5, v4

    add-int/2addr v9, v6

    aget-object v9, v0, v9

    if-nez v9, :cond_3

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iget-object v10, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v11, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    aget v11, v11, v12

    invoke-virtual {v10, v7, v8, v11}, Lcom/adobe/reader/JSurface;->getIndex(III)I

    move-result v7

    invoke-direct {p0, v9, v7}, Lcom/adobe/reader/PageView;->updateTileCacheFromPrevNextTileCache(Lcom/adobe/reader/Tile;I)V

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    move-object v0, v2

    goto :goto_0
.end method

.method private native findText(JLjava/lang/String;ZZZ)Z
.end method

.method private getAndCopyScaledBitmap()V
    .locals 3

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->getAndCopyScaledBitmap(II)V

    return-void
.end method

.method private getAndCopyScaledBitmap(II)V
    .locals 33

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mViewMode:I

    move v6, v0

    if-ne v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_reflowIsTileDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/adobe/reader/PageView;->paintReflowBitmap()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mIsZoomPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v10, Lcom/adobe/reader/JSurface;->sTileWidth:I

    sget v11, Lcom/adobe/reader/JSurface;->sTileHeight:I

    new-instance v28, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    move v5, v0

    add-int v5, v5, p1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    move v6, v0

    add-int v6, v6, p2

    move-object/from16 v0, v28

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    div-int/2addr v5, v10

    mul-int v29, v5, v10

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    div-int/2addr v5, v11

    mul-int v30, v5, v11

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    add-int v6, v29, v10

    sub-int/2addr v5, v6

    int-to-double v5, v5

    int-to-double v7, v10

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/lit8 v31, v5, 0x1

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    add-int v6, v30, v11

    sub-int/2addr v5, v6

    int-to-double v5, v5

    int-to-double v7, v11

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/lit8 v32, v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/adobe/reader/PageView;->clearAllTiles()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mIsZoomPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    move v6, v0

    if-ne v10, v6, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    move v6, v0

    if-ne v11, v6, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    move v6, v0

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/adobe/reader/PageView;->mARWin:J

    move-wide v6, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/adobe/reader/PageView;->paintRect(JIIII)V

    sget-object v13, Lcom/adobe/reader/ARBitmapPool;->sPixels:[I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    iget v15, v5, Lcom/adobe/reader/JSurface;->m_width:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object v5, v12

    :cond_2
    const/4 v6, 0x0

    :goto_1
    move v0, v6

    move/from16 v1, v32

    if-ge v0, v1, :cond_a

    const/4 v7, 0x0

    :goto_2
    move v0, v7

    move/from16 v1, v31

    if-ge v0, v1, :cond_9

    mul-int v8, v7, v10

    add-int v15, v29, v8

    mul-int v8, v6, v11

    add-int v16, v30, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    move-object v9, v0

    const/4 v12, 0x0

    aget v9, v9, v12

    move-object v0, v8

    move v1, v15

    move/from16 v2, v16

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/reader/JSurface;->getIndex(III)I

    move-result v8

    const/16 v17, -0x1

    move-object/from16 v12, p0

    move/from16 v13, v29

    move/from16 v14, v30

    invoke-direct/range {v12 .. v17}, Lcom/adobe/reader/PageView;->ensureMemoryAvailable(IIIII)Z

    move-result v9

    if-nez v9, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v9, v0

    iget-object v9, v9, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v9

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v12, v0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v0, v12

    move v1, v15

    move/from16 v2, v16

    move v3, v13

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/reader/JSurface;->purgeTiles(IIIZ)Z

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    new-instance v9, Lcom/adobe/reader/Tile;

    move-object v0, v9

    move v1, v10

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/reader/Tile;-><init>(IIII)V

    if-eqz v9, :cond_4

    iget-object v12, v9, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v12, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v9, v0

    iget-object v9, v9, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v9

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v12, v0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v0, v12

    move v1, v15

    move/from16 v2, v16

    move v3, v13

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/reader/JSurface;->purgeTiles(IIIZ)Z

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance v9, Lcom/adobe/reader/Tile;

    move-object v0, v9

    move v1, v10

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/reader/Tile;-><init>(IIII)V

    :cond_5
    if-eqz v9, :cond_6

    iget-object v12, v9, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_6

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/adobe/reader/PageView;->mARWin:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    move-wide/from16 v24, v0

    move-object/from16 v17, p0

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v26, v15

    move/from16 v27, v16

    invoke-direct/range {v17 .. v27}, Lcom/adobe/reader/PageView;->paintRectAtLocation(JIIIIDII)V

    move-object v0, v9

    iget-object v0, v0, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    sget-object v18, Lcom/adobe/reader/ARBitmapPool;->sPixels:[I

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v12, v0

    move-object v0, v12

    iget v0, v0, Lcom/adobe/reader/JSurface;->m_width:I

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v23, v10

    move/from16 v24, v11

    invoke-virtual/range {v17 .. v24}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v12, v0

    iget-object v12, v12, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v12

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v13, v0

    iget-object v13, v13, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v13, v13, v8

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v13, v0

    iget-object v13, v13, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v13, v13, v8

    invoke-virtual {v13}, Lcom/adobe/reader/Tile;->releaseBitmap()V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v13, v0

    iget-object v13, v13, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aput-object v9, v13, v8

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int v8, v15, v10

    add-int v9, v16, v11

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->postInvalidate(IIII)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/adobe/reader/PageView;->checkForZoomChangeMessages()Z

    move-result v8

    if-nez v8, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    :cond_7
    const/4 v12, 0x1

    iput-boolean v12, v9, Lcom/adobe/reader/Tile;->mIsDirty:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mTileRect:Landroid/graphics/Rect;

    move-object v12, v0

    add-int v13, v15, v10

    add-int v14, v16, v11

    move-object v0, v12

    move v1, v15

    move/from16 v2, v16

    move v3, v13

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v12, Landroid/graphics/Canvas;

    iget-object v13, v9, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v12, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Canvas;->drawColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mTileRect:Landroid/graphics/Rect;

    move-object v13, v0

    neg-int v14, v15

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->paintEmptyPages(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mStoredBitmapRect:Landroid/graphics/Rect;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mStoredBitmapRect:Landroid/graphics/Rect;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mTileRect:Landroid/graphics/Rect;

    move-object v14, v0

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mTileRect:Landroid/graphics/Rect;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mStoredBitmapRect:Landroid/graphics/Rect;

    move-object v14, v0

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mStoredBitmapRect:Landroid/graphics/Rect;

    move-object v13, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v14, v0

    neg-int v14, v14

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move-object v0, v13

    move v1, v14

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mTileRect:Landroid/graphics/Rect;

    move-object v13, v0

    neg-int v14, v15

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v17, v0

    move-object v0, v13

    move v1, v14

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mStoredBitmapRect:Landroid/graphics/Rect;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mTileRect:Landroid/graphics/Rect;

    move-object v14, v0

    sget-object v17, Lcom/adobe/reader/PageView;->m_paint:Landroid/graphics/Paint;

    move-object v0, v12

    move-object v1, v5

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v13, v0

    iget v14, v13, Lcom/adobe/reader/JSurface;->mNumTiles:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lcom/adobe/reader/JSurface;->mNumTiles:I

    goto/16 :goto_4

    :catchall_2
    move-exception v5

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mIsZoomPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0
.end method

.method private native getCurrentDirectory(J)Ljava/lang/String;
.end method

.method private native getCurrentPageNumber(J)[I
.end method

.method private native getDirectoriesInDirectory(J)[Ljava/lang/String;
.end method

.method private native getFilesInDirectory(J)[Ljava/lang/String;
.end method

.method private native getJSurface(J)Lcom/adobe/reader/JSurface;
.end method

.method private static native getLibraryVersion()I
.end method

.method private native getNumPages(J)I
.end method

.method private getNumTilesToBeFreed()I
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    sget-object v1, Lcom/adobe/reader/ARBitmapPool;->sListAvailableBitmap:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v0, v9

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getCurrentMemoryUsage()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/adobe/reader/AdobeReader;->getHeapSizeLimit(Z)D

    move-result-wide v2

    iget-object v4, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {v4}, Lcom/adobe/reader/JSurface;->getTileSize()D

    move-result-wide v4

    iget-object v6, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {v6}, Lcom/adobe/reader/JSurface;->getNumInMemoryTiles()I

    move-result v6

    int-to-double v7, v1

    add-double/2addr v7, v4

    cmpg-double v7, v7, v2

    if-ltz v7, :cond_1

    const/4 v7, 0x5

    if-ge v6, v7, :cond_1

    invoke-virtual {v0, v9}, Lcom/adobe/reader/AdobeReader;->getHeapSizeLimit(Z)D

    move-result-wide v2

    :cond_1
    int-to-double v6, v1

    add-double/2addr v6, v4

    cmpg-double v0, v6, v2

    if-ltz v0, :cond_2

    int-to-double v0, v1

    add-double/2addr v0, v4

    sub-double/2addr v0, v2

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method private getPageByOffset(D)I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getNumPages()I

    move-result v1

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_0
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    if-ne v2, v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, v2}, Lcom/adobe/reader/PageView;->getPageOffset(I)D

    move-result-wide v3

    cmpg-double v3, p1, v3

    if-gez v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private getPageHeight(I)I
    .locals 4

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mHasUniformPages:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPagesHeight:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPagesHeight:[D

    aget-wide v0, v0, p1

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private getPageOffset(I)D
    .locals 9

    const/4 v4, 0x0

    iget v0, p0, Lcom/adobe/reader/PageView;->mVerticalGutter:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    div-double/2addr v0, v2

    if-nez p1, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v2, p0, Lcom/adobe/reader/PageView;->mHasUniformPages:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mPagesHeight:[D

    aget-wide v2, v2, v4

    iget-wide v4, p0, Lcom/adobe/reader/PageView;->mInitialPageGap:D

    add-double/2addr v2, v4

    int-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    goto :goto_0

    :cond_1
    move-wide v7, v0

    move-wide v1, v7

    move v0, v4

    :goto_1
    if-ge v0, p1, :cond_2

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mPagesHeight:[D

    aget-wide v3, v3, v0

    iget-wide v5, p0, Lcom/adobe/reader/PageView;->mInitialPageGap:D

    add-double/2addr v3, v5

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-wide v0, v1

    goto :goto_0
.end method

.method private getPageWidth(I)I
    .locals 4

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mHasUniformPages:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPagesWidth:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPagesWidth:[D

    aget-wide v0, v0, p1

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private getPrevNextPageBitmapForSinglePageMode([Lcom/adobe/reader/Tile;I)Landroid/graphics/Bitmap;
    .locals 16

    if-eqz p1, :cond_5

    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/adobe/reader/PageView;->paintEmptyPageAtMinZoomLevelForSinglePageMode(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_1
    return-object v2

    :catch_0
    move-exception v3

    const-string v3, "getPrevPageBitmapForSinglePageMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current Page Number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bitmap to be drawn for page "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget v4, Lcom/adobe/reader/JSurface;->sTileWidth:I

    sget v5, Lcom/adobe/reader/JSurface;->sTileHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    move v6, v0

    int-to-double v6, v6

    int-to-double v8, v4

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    move v7, v0

    int-to-double v7, v7

    int-to-double v9, v5

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_0

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v7, :cond_4

    mul-int v10, v8, v7

    add-int/2addr v10, v9

    aget-object v10, p1, v10

    if-eqz v10, :cond_2

    iget-object v11, v10, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v11, :cond_3

    :cond_2
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    iget-object v10, v10, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mTileRect:Landroid/graphics/Rect;

    move-object v11, v0

    mul-int v12, v8, v4

    mul-int v13, v9, v5

    mul-int v14, v8, v4

    add-int/2addr v14, v4

    mul-int v15, v9, v5

    add-int/2addr v15, v5

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v10, :cond_2

    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mTileRect:Landroid/graphics/Rect;

    move-object v12, v0

    sget-object v13, Lcom/adobe/reader/PageView;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/adobe/reader/PageView;->paintEmptyPageAtMinZoomLevelForSinglePageMode(I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_1
.end method

.method private native gotoPage(JI)V
.end method

.method private native isAcrobat8Portfolio(J)Z
.end method

.method private native isAtBeginningOfDocument(J)Z
.end method

.method private native isAtEndOfDocument(J)Z
.end method

.method private native isPortfolio(J)Z
.end method

.method private isTilePresent(II)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    aget v1, v1, v2

    invoke-virtual {v0, p1, p2, v1}, Lcom/adobe/reader/JSurface;->getTile(III)Lcom/adobe/reader/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/adobe/reader/Tile;->mIsDirty:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private native nextPage(J)V
.end method

.method private openDocument()V
    .locals 6

    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    iput v4, p0, Lcom/adobe/reader/PageView;->mNumPages:I

    invoke-static {}, Lcom/adobe/reader/AdobeReader;->HasPendingError()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->removeAllMessagesFromBackgroundThread()V

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0, v3, v4}, Lcom/adobe/reader/AdobeReader;->hideUIElems(ZZ)V

    const-string v1, "com.adobe.reader.preferences"

    invoke-virtual {v0, v1, v4}, Lcom/adobe/reader/AdobeReader;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "lastViewMode"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v5, v1, :cond_2

    iput v3, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->isRunningOnTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iput v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/adobe/reader/PageView;->closeDocument()V

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->sendDeleteTilesMessage()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sput-boolean v3, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    iget-wide v1, p0, Lcom/adobe/reader/PageView;->mARWin:J

    sget-boolean v3, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/adobe/reader/PageView;->setTiledMode(JZ)V

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->sendOpenDocumentMessage()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->setDocTitle()V

    iput v4, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->initializeUIElems()V

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    goto :goto_1
.end method

.method private native openDocument(JLjava/lang/String;I)V
.end method

.method private native openFile(JLjava/lang/String;)Z
.end method

.method private paintEmptyPages(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V
    .locals 17

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const v5, 0xc0c0c0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v0, v3

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mViewMode:I

    move v7, v0

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/adobe/reader/PageView;->getPageWidth(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    move v6, v0

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/adobe/reader/PageView;->getPageHeight(I)I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mHorizontalGutter:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mVerticalGutter:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mHorizontalGutter:I

    move v9, v0

    add-int/2addr v5, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mVerticalGutter:I

    move v9, v0

    add-int/2addr v6, v9

    invoke-virtual {v3, v7, v8, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v3

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/reader/PageView;->mHasUniformPages:Z

    move v7, v0

    if-eqz v7, :cond_5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/adobe/reader/PageView;->getPageHeight(I)I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/adobe/reader/PageView;->getPageWidth(I)I

    move-result v6

    move v15, v6

    move v6, v5

    move v5, v15

    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    int-to-double v7, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    move-wide v9, v0

    div-double/2addr v7, v9

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct {v0, v1, v2}, Lcom/adobe/reader/PageView;->getPageByOffset(D)I

    move-result v7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v8, v0

    int-to-double v8, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    move-wide v10, v0

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-direct {v0, v1, v2}, Lcom/adobe/reader/PageView;->getPageByOffset(D)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v9, v0

    move v15, v7

    move v7, v5

    move v5, v15

    move/from16 v16, v9

    move v9, v6

    move/from16 v6, v16

    :goto_1
    if-ge v5, v8, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/reader/PageView;->mHasUniformPages:Z

    move v10, v0

    if-nez v10, :cond_2

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/adobe/reader/PageView;->getPageHeight(I)I

    move-result v7

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/adobe/reader/PageView;->getPageWidth(I)I

    move-result v9

    move v15, v9

    move v9, v7

    move v7, v15

    :cond_2
    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/adobe/reader/PageView;->getPageOffset(I)D

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    move-wide v12, v0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v11, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v12, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/reader/PageView;->mHasUniformPages:Z

    move v13, v0

    if-nez v13, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v13, v0

    if-ge v13, v7, :cond_3

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v13, v0

    if-le v13, v7, :cond_3

    move v12, v11

    move v11, v7

    :goto_2
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v13, v0

    add-int v14, v10, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual {v3, v12, v6, v11, v13}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v3

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int v6, v10, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v13, v0

    if-lt v13, v7, :cond_4

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v15, v12

    move v12, v11

    move v11, v15

    goto :goto_2

    :cond_4
    move v15, v12

    move v12, v11

    move v11, v15

    goto :goto_2

    :cond_5
    move v15, v6

    move v6, v5

    move v5, v15

    goto/16 :goto_0
.end method

.method private native paintRect(JIIII)V
.end method

.method private native paintRectAtLocation(JIIIIDII)V
.end method

.method private native paintRectForMinZoomMode(JIIIII)V
.end method

.method private paintReflowBitmap()V
    .locals 9

    const/4 v3, 0x0

    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mReflowBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/adobe/reader/PageView;->getNumTilesToBeFreed()I

    move-result v1

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_0

    sget-object v0, Lcom/adobe/reader/ARBitmapPool;->sListAvailableBitmap:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/adobe/reader/ARBitmapPool;->freeBitmapFromMemory(Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget v0, v0, Lcom/adobe/reader/JSurface;->m_width:I

    iget-object v1, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget v1, v1, Lcom/adobe/reader/JSurface;->m_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mReflowBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v8, p0, Lcom/adobe/reader/PageView;->mReflowBitmap:Landroid/graphics/Bitmap;

    monitor-enter v8

    :try_start_1
    iget-wide v1, p0, Lcom/adobe/reader/PageView;->mARWin:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget v5, v0, Lcom/adobe/reader/JSurface;->m_width:I

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget v6, v0, Lcom/adobe/reader/JSurface;->m_height:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/adobe/reader/PageView;->paintRect(JIIII)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mReflowBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/adobe/reader/ARBitmapPool;->sPixels:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget v3, v3, Lcom/adobe/reader/JSurface;->m_width:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget v6, v6, Lcom/adobe/reader/JSurface;->m_width:I

    iget-object v7, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget v7, v7, Lcom/adobe/reader/JSurface;->m_height:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_reflowIsTileDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->postInvalidate()V

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget v0, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    iget v1, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/adobe/reader/PageView;->postInvalidate(IIII)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private native prevPage(J)V
.end method

.method private reduceMemoryUsage(IIZ)V
    .locals 7

    const/4 v6, 0x0

    sget-object v0, Lcom/adobe/reader/ARBitmapPool;->sListAvailableBitmap:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getCurrentMemoryUsage()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/adobe/reader/AdobeReader;->getHeapSizeLimit(Z)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    if-nez p3, :cond_2

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {v0}, Lcom/adobe/reader/JSurface;->getTileSize()D

    move-result-wide v4

    :cond_2
    int-to-double v0, v1

    add-double/2addr v0, v4

    sub-double/2addr v0, v2

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_0

    move v1, v6

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    aget v2, v2, v6

    const/4 v3, -0x1

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/adobe/reader/PageView;->saveTileToDisk(IIII)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private native removeTextHighlight(J)V
.end method

.method private removeUnnecessaryMessages()V
    .locals 2

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private resetAllZoomLevels()V
    .locals 3

    const/4 v0, 0x3

    iget v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mZoomLevels:[D

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/reader/PageView;->resetAllZoomLevels(J[D)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mZoomLevels:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/adobe/reader/PageView;->mMinZoomLevel:D

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mZoomLevels:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/adobe/reader/PageView;->mDoubleTapZoomLevel:D

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mZoomLevels:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/adobe/reader/PageView;->mMaxZoomLevel:D

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->resetOnScreenZoomLevels()V

    :cond_0
    return-void
.end method

.method private native resetAllZoomLevels(J[D)V
.end method

.method private native resetNumPasswdAttempts(J)V
.end method

.method private native resetPasswordRequestedFlag(J)V
.end method

.method private saveTileToDisk(IIII)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/adobe/reader/AdobeReader;->isTileCacheThresholdSpaceUsed()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->checkForZoomChangeMessages()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/adobe/reader/JSurface;->saveTileToDisk(IIII)Z

    move-result v0

    return v0

    :cond_2
    iget-object v1, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {v1, p1, p2, p4, v2}, Lcom/adobe/reader/JSurface;->purgeTiles(IIIZ)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private native scroll(JII)V
.end method

.method private scrollDocument()V
    .locals 5

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mScrollXYPos:[Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/reader/PageView;->mScrollXYPos:[Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mScrollXYPos:[Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mScrollXYPos:[Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mScrollXYPos:[Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    iget-wide v3, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/adobe/reader/PageView;->scroll(JII)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private sendDeleteTileMessage()V
    .locals 3

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x16

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendDeleteTilesMessage()V
    .locals 3

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x8

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendDoubleTapZoomMessage()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/adobe/reader/PageView;->removeUnnecessaryMessages()V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->clearAllTiles()V

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/adobe/reader/PageView;->mIsZoomPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->clearAnimation()V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/adobe/reader/PageView;->scrollTo(II)V

    goto :goto_0
.end method

.method private sendFetchPrevNextPageTilesMessage(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x14

    iput v2, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    iput p2, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendLoadTileMessage(II)V
    .locals 3

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v2, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    iput p2, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendNativeDocZoomMessage()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/adobe/reader/PageView;->removeUnnecessaryMessages()V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->clearAllTiles()V

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v5, v1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v4

    :goto_1
    iget-object v1, p0, Lcom/adobe/reader/PageView;->mIsZoomPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ge v0, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->clearAnimation()V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/adobe/reader/PageView;->scrollTo(II)V

    goto :goto_0
.end method

.method private sendNextPageMessage()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    const/4 v1, 0x2

    iget v2, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/adobe/reader/PageView;->mIsRunningDoubleTapAnim:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->flipAnimateToLeft()V

    :cond_2
    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->removeUnnecessaryMessages()V

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mIsPageNavigationPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xd

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mIsPageNavigationPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aget v1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/adobe/reader/PageView;->scrollTo(II)V

    goto :goto_0
.end method

.method private sendOpenDocumentMessage()V
    .locals 3

    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendPaintRectIntoTilesMessage(Landroid/graphics/Rect;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x17

    iput v2, v1, Landroid/os/Message;->what:I

    iput p2, v1, Landroid/os/Message;->arg1:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendPaintTilesMessage(Landroid/graphics/Rect;Z)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/adobe/reader/PageView;->mIsPortfolioDoc:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendPrefetchMessage(Landroid/graphics/Rect;)V
    .locals 4

    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private sendPrevPageMessage()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    const/4 v1, 0x2

    iget v2, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/adobe/reader/PageView;->mIsRunningDoubleTapAnim:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->flipAnimateToRight()V

    :cond_2
    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->removeUnnecessaryMessages()V

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mIsPageNavigationPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xc

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mIsPageNavigationPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aget v1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/adobe/reader/PageView;->scrollTo(II)V

    goto :goto_0
.end method

.method private sendSaveTilesMessage(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    iput p2, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendScrollMessage(Landroid/graphics/Rect;)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mTimerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private sendSetViewModeMessage(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/adobe/reader/PageView;->removeUnnecessaryMessages()V

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xe

    iput v2, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mSwitchViewModePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendWindowSizeChangedMessage(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/adobe/reader/PageView;->removeUnnecessaryMessages()V

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendZoomMessage(ZI)V
    .locals 3

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/adobe/reader/PageView;->removeUnnecessaryMessages()V

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    :goto_1
    iput p2, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    goto :goto_1
.end method

.method private native setCancelSearch(JZ)V
.end method

.method private native setCurrentZoomLevel(JDII)V
.end method

.method private native setTiledMode(JZ)V
.end method

.method private native setViewMode(JI)V
.end method

.method private native setWindowSize(JIIII)V
.end method

.method private updatePrevNextPageTiles([Lcom/adobe/reader/Tile;Lcom/adobe/reader/Tile;I)V
    .locals 1

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_0
    aget-object v0, p1, p3

    if-eqz v0, :cond_0

    aget-object v0, p1, p3

    invoke-virtual {v0}, Lcom/adobe/reader/Tile;->releaseBitmap()V

    :cond_0
    aput-object p2, p1, p3

    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    invoke-virtual {p2}, Lcom/adobe/reader/Tile;->releaseBitmap()V

    goto :goto_0
.end method

.method private updateTileCacheFromPrevNextTileCache(Lcom/adobe/reader/Tile;I)V
    .locals 3

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v1, v1, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v1, v1, p2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v1, v1, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/adobe/reader/Tile;->releaseBitmap()V

    :goto_0
    iget-object v1, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v1, v1, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aput-object p1, v1, p2

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget v2, v1, Lcom/adobe/reader/JSurface;->mNumTiles:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/adobe/reader/JSurface;->mNumTiles:I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native windowSizeChanged(JIIII)V
.end method

.method private native zoomIn(J)Z
.end method

.method private native zoomOut(J)Z
.end method


# virtual methods
.method public adjustGalleyDims(II)V
    .locals 4

    iget v0, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    :goto_0
    iget v1, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    if-ge p2, v1, :cond_0

    iget v1, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    :goto_1
    iget-object v2, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    const/4 v3, 0x0

    aput v0, v2, v3

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    return-void

    :cond_0
    move v1, p2

    goto :goto_1

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public adjustScrollbars(II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    const/4 v1, 0x3

    iget v2, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/adobe/reader/PageView;->mDocOpened:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/adobe/reader/Runnables;->resetTimerHandlerForUIElemsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/AdobeReader;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    iput v5, p0, Lcom/adobe/reader/PageView;->mHorizontalGutter:I

    if-gez p1, :cond_2

    neg-int v1, p1

    iput v1, p0, Lcom/adobe/reader/PageView;->mHorizontalGutter:I

    move v1, v5

    :goto_0
    if-gez p2, :cond_3

    neg-int v2, p2

    iput v2, p0, Lcom/adobe/reader/PageView;->mVerticalGutter:I

    move v2, v5

    :goto_1
    iget-object v3, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aput v1, v3, v5

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aput v2, v1, v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getUIThreadId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    sget-object v1, Lcom/adobe/reader/Runnables;->adjustScrollBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/AdobeReader;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iput v5, p0, Lcom/adobe/reader/PageView;->mHorizontalGutter:I

    move v1, p1

    goto :goto_0

    :cond_3
    iput v5, p0, Lcom/adobe/reader/PageView;->mVerticalGutter:I

    move v2, p2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aget v0, v0, v5

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aget v1, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/adobe/reader/PageView;->scrollTo(II)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mZoomLevelChanged:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mZoomLevelChanged:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_2
.end method

.method public canPerformZoomInAgain()Z
    .locals 1

    sget-boolean v0, Lcom/adobe/reader/PageView;->mCanPerformZoomInAgain:Z

    return v0
.end method

.method public canPerformZoomOutAgain()Z
    .locals 1

    sget-boolean v0, Lcom/adobe/reader/PageView;->mCanPerformZoomOutAgain:Z

    return v0
.end method

.method public canScrollDown()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v3, v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    aget v1, v1, v3

    iget v2, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    iget v1, p0, Lcom/adobe/reader/PageView;->mNumPages:I

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public canScrollUp()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public changeDirectory(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/reader/PageView;->changeDirectory(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public cleanup()V
    .locals 3

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->destroyARWindow(J)V

    iput-object v2, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iput-object v2, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    iput-object v2, p0, Lcom/adobe/reader/PageView;->mPagesWidth:[D

    iput-object v2, p0, Lcom/adobe/reader/PageView;->mPagesHeight:[D

    iput-object v2, p0, Lcom/adobe/reader/PageView;->mZoomLevels:[D

    iput-object v2, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    iput-object v2, p0, Lcom/adobe/reader/PageView;->mOffscreenPixels:[I

    return-void
.end method

.method public clearAllTiles()V
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {v0}, Lcom/adobe/reader/JSurface;->clearTileArray()V

    :cond_0
    invoke-direct {p0}, Lcom/adobe/reader/PageView;->sendDeleteTilesMessage()V

    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    const/4 v0, 0x3

    iget v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/adobe/reader/PageView;->mHorizontalGutter:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mIsScrolling:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    neg-int v2, v0

    neg-int v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/adobe/reader/PageView;->scrollDocument(II)V

    invoke-virtual {p0, v0, v1}, Lcom/adobe/reader/PageView;->scrollBy(II)V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0, v4}, Lcom/adobe/reader/AdobeReader;->resetTimerHandlerForUIElems(Z)V

    :cond_0
    return-void
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    const/4 v0, 0x3

    iget v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/adobe/reader/PageView;->mVerticalGutter:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method protected disableOrientationSensor()V
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method public doubleTapNativeZoom()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_reflowIsTileDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->scrollDocument()V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mZoomLevelChanged:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-wide v1, p0, Lcom/adobe/reader/PageView;->mARWin:J

    iget-wide v3, p0, Lcom/adobe/reader/PageView;->mDoubleTapZoomLevel:D

    iget-wide v5, p0, Lcom/adobe/reader/PageView;->mDoubleTapX:D

    iget-wide v7, p0, Lcom/adobe/reader/PageView;->mDoubleTapY:D

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/adobe/reader/PageView;->doubleTapZoom(JDDD)I

    move-result v0

    iput-boolean v9, p0, Lcom/adobe/reader/PageView;->mIsRunningDoubleTapAnim:Z

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->resetOnScreenZoomLevels()V

    sget-boolean v1, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->getAndCopyScaledBitmap()V

    :goto_0
    const/4 v1, 0x3

    iget v2, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mZoomLevelChanged:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getUIThreadId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    sget-object v1, Lcom/adobe/reader/Runnables;->updateZoomButtonsOnDoubleTapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/AdobeReader;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :cond_0
    iget-object v1, p0, Lcom/adobe/reader/PageView;->mIsZoomPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :pswitch_0
    sput-boolean v9, Lcom/adobe/reader/PageView;->mCanPerformZoomInAgain:Z

    sput-boolean v9, Lcom/adobe/reader/PageView;->mCanPerformZoomOutAgain:Z

    goto :goto_1

    :pswitch_1
    sput-boolean v10, Lcom/adobe/reader/PageView;->mCanPerformZoomInAgain:Z

    sput-boolean v9, Lcom/adobe/reader/PageView;->mCanPerformZoomOutAgain:Z

    goto :goto_1

    :pswitch_2
    sput-boolean v9, Lcom/adobe/reader/PageView;->mCanPerformZoomInAgain:Z

    sput-boolean v10, Lcom/adobe/reader/PageView;->mCanPerformZoomOutAgain:Z

    goto :goto_1

    :pswitch_3
    sput-boolean v10, Lcom/adobe/reader/PageView;->mCanPerformZoomInAgain:Z

    sput-boolean v10, Lcom/adobe/reader/PageView;->mCanPerformZoomOutAgain:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->updateZoomButtonsOnDoubleTapNativeZoom()V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getUIThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public doubleTapZoom(DD)V
    .locals 10

    const v2, 0x3f666666    # 0.9f

    const/4 v9, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0, v9, v5}, Lcom/adobe/reader/AdobeReader;->hideUIElems(ZZ)V

    iput-wide p1, p0, Lcom/adobe/reader/PageView;->mDoubleTapX:D

    iput-wide p3, p0, Lcom/adobe/reader/PageView;->mDoubleTapY:D

    const/4 v0, 0x3

    iget v3, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v0, v3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mLastFlingGestureInReflowTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/adobe/reader/PageView;->sendDoubleTapZoomMessage()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/adobe/reader/PageView;->mVerticalGutter:I

    int-to-double v3, v0

    cmpg-double v0, p3, v3

    if-ltz v0, :cond_0

    const/4 v0, 0x2

    iget v3, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/adobe/reader/PageView;->mVerticalGutter:I

    iget v3, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    invoke-direct {p0, v3}, Lcom/adobe/reader/PageView;->getPageHeight(I)I

    move-result v3

    add-int/2addr v0, v3

    int-to-double v3, v0

    cmpl-double v0, p3, v3

    if-gtz v0, :cond_0

    :cond_3
    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v9, v0, :cond_4

    iget v0, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    iget v3, p0, Lcom/adobe/reader/PageView;->mVerticalGutter:I

    sub-int/2addr v0, v3

    int-to-double v3, v0

    cmpl-double v0, p3, v3

    if-gtz v0, :cond_0

    :cond_4
    iget-wide v3, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    iget-wide v6, p0, Lcom/adobe/reader/PageView;->mMinZoomLevel:D

    sub-double/2addr v3, v6

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v3, v6

    if-lez v0, :cond_5

    iget-wide v3, p0, Lcom/adobe/reader/PageView;->mMinZoomLevel:D

    iget-wide v6, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    div-double/2addr v3, v6

    double-to-float v0, v3

    iput v0, p0, Lcom/adobe/reader/PageView;->mDoubleTapAnimFinalScale:F

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    double-to-float v6, p1

    double-to-float v8, p3

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput v2, p0, Lcom/adobe/reader/PageView;->mDoubleTapAnimCurrentScale:F

    const-wide/16 v1, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a000b

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/content/Context;I)V

    move-object v6, v0

    :goto_1
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollY()I

    move-result v2

    iget v3, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    iget v4, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/reader/JSurface;->purgeOffscreenTiles(IIIIZ)V

    iput-boolean v9, p0, Lcom/adobe/reader/PageView;->mIsRunningDoubleTapAnim:Z

    invoke-virtual {v6, v9}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v6, p0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v6}, Lcom/adobe/reader/PageView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    const v0, -0x3f3f40

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_5
    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mDoubleTapZoomLevel:D

    iget-wide v6, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    div-double/2addr v2, v6

    double-to-float v0, v2

    iput v0, p0, Lcom/adobe/reader/PageView;->mDoubleTapAnimFinalScale:F

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v2, p0, Lcom/adobe/reader/PageView;->mDoubleTapAnimFinalScale:F

    iget v4, p0, Lcom/adobe/reader/PageView;->mDoubleTapAnimFinalScale:F

    double-to-float v6, p1

    double-to-float v8, p3

    move v3, v1

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iget v1, p0, Lcom/adobe/reader/PageView;->mDoubleTapAnimFinalScale:F

    iput v1, p0, Lcom/adobe/reader/PageView;->mDoubleTapAnimCurrentScale:F

    const-wide/16 v1, 0x1e0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0006

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/content/Context;I)V

    move-object v6, v0

    goto :goto_1
.end method

.method protected enableOrientationSensor()V
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public endScroll()V
    .locals 2

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method

.method public fetchTile(IIIII)V
    .locals 23

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mViewMode:I

    move v6, v0

    if-ne v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_reflowIsTileDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/adobe/reader/PageView;->paintReflowBitmap()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v5}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v5

    sget v10, Lcom/adobe/reader/JSurface;->sTileWidth:I

    sget v11, Lcom/adobe/reader/JSurface;->sTileHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object v0, v6

    move/from16 v1, p3

    move/from16 v2, p4

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/reader/JSurface;->getTile(III)Lcom/adobe/reader/Tile;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/adobe/reader/PageView;->isTilePresent(II)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/adobe/reader/AdobeReader;->HasPendingError()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/adobe/reader/PageView;->ensureMemoryAvailable(IIIII)Z

    move-result v20

    if-nez v20, :cond_2

    invoke-static {}, Lcom/adobe/reader/AdobeReader;->isTileCacheFull()Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/reader/PageView;->mCanPerformPrefetch:Z

    goto :goto_0

    :cond_2
    new-instance v6, Lcom/adobe/reader/Tile;

    move-object v0, v6

    move v1, v10

    move v2, v11

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/reader/Tile;-><init>(IIII)V

    if-eqz v6, :cond_3

    iget-object v7, v6, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_a

    :cond_3
    const/4 v6, -0x1

    move v0, v6

    move/from16 v1, p5

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    iget-object v5, v5, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v6, v0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, v6

    move/from16 v1, p3

    move/from16 v2, p4

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/reader/JSurface;->purgeTiles(IIIZ)Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v5, Lcom/adobe/reader/Tile;

    move-object v0, v5

    move v1, v10

    move v2, v11

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/reader/Tile;-><init>(IIII)V

    move-object/from16 v21, v5

    :goto_1
    if-eqz v21, :cond_8

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object v0, v5

    move/from16 v1, p3

    move/from16 v2, p4

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/reader/JSurface;->getIndex(III)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    iget-object v5, v5, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v5, v5, v22

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    iget v6, v5, Lcom/adobe/reader/JSurface;->mNumTiles:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/adobe/reader/JSurface;->mNumTiles:I

    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/adobe/reader/PageView;->mARWin:J

    move-wide v6, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    move-wide v12, v0

    move-object/from16 v5, p0

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-direct/range {v5 .. v15}, Lcom/adobe/reader/PageView;->paintRectAtLocation(JIIIIDII)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    move-object v12, v0

    sget-object v13, Lcom/adobe/reader/ARBitmapPool;->sPixels:[I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    iget v15, v5, Lcom/adobe/reader/JSurface;->m_width:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mViewMode:I

    move v6, v0

    if-ne v5, v6, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v21

    iput v0, v1, Lcom/adobe/reader/Tile;->mPage:I

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    iget-object v5, v5, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v5

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v6, v0

    iget-object v6, v6, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v6, v6, v22

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v6, v0

    iget-object v6, v6, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v6, v6, v22

    invoke-virtual {v6}, Lcom/adobe/reader/Tile;->releaseBitmap()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v6, v0

    iget-object v6, v6, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aput-object v21, v6, v22

    if-nez v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v6, v0

    iget-object v6, v6, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v6, v6, v22

    invoke-virtual {v6}, Lcom/adobe/reader/Tile;->saveToDisk()Z

    move-result v6

    if-nez v6, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v6, v0

    iget-object v6, v6, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v6, v6, v22

    invoke-virtual {v6}, Lcom/adobe/reader/Tile;->releaseBitmap()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v6, v0

    iget-object v6, v6, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    const/4 v7, 0x0

    aput-object v7, v6, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v6, v0

    iget v7, v6, Lcom/adobe/reader/JSurface;->mNumTiles:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/adobe/reader/JSurface;->mNumTiles:I

    :cond_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_8
    add-int v5, p3, v10

    add-int v6, p4, v11

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->postInvalidate(IIII)V

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :cond_9
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/reader/PageView;->mCanPerformPrefetch:Z

    goto/16 :goto_0

    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    :cond_a
    move-object/from16 v21, v6

    goto/16 :goto_1
.end method

.method public findText(Ljava/lang/String;Z)Z
    .locals 9

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->scrollDocument()V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    move-object v8, v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iput-boolean v6, v8, Lcom/adobe/reader/AdobeReader;->mWasSearchSuccessful:Z

    :goto_0
    sget-object v1, Lcom/adobe/reader/Runnables;->textSearchComplete:Ljava/lang/Runnable;

    invoke-virtual {v8, v1}, Lcom/adobe/reader/AdobeReader;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-boolean v1, v8, Lcom/adobe/reader/AdobeReader;->mWasSearchSuccessful:Z

    return v1

    :cond_1
    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mARWin:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v7, v6

    invoke-direct/range {v1 .. v7}, Lcom/adobe/reader/PageView;->findText(JLjava/lang/String;ZZZ)Z

    move-result v1

    iput-boolean v1, v8, Lcom/adobe/reader/AdobeReader;->mWasSearchSuccessful:Z

    goto :goto_0
.end method

.method public finishSendingPortfolioFileData()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPortfolioOutputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPortfolioOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPortfolioOpenFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mPortfolioOpenFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iput-object v2, p0, Lcom/adobe/reader/PageView;->mPortfolioOutputStream:Ljava/io/OutputStream;

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v2, p0, Lcom/adobe/reader/PageView;->mPortfolioOutputStream:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method public getARWin()J
    .locals 2

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    return-wide v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrPageBitmapForSinglePageMode()Landroid/graphics/Bitmap;
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lcom/adobe/reader/PageView;->getScrollX()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/adobe/reader/PageView;->getScrollY()I

    move-result v7

    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    move v8, v0

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    sget v8, Lcom/adobe/reader/JSurface;->sTileWidth:I

    sget v9, Lcom/adobe/reader/JSurface;->sTileHeight:I

    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    move v11, v0

    add-int/2addr v11, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    move v12, v0

    add-int/2addr v12, v7

    invoke-direct {v10, v6, v7, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v6, v10, Landroid/graphics/Rect;->left:I

    div-int/2addr v6, v8

    mul-int/2addr v6, v8

    iget v7, v10, Landroid/graphics/Rect;->top:I

    div-int/2addr v7, v9

    mul-int/2addr v7, v9

    iget v11, v10, Landroid/graphics/Rect;->right:I

    add-int v12, v6, v8

    sub-int/2addr v11, v12

    int-to-double v11, v11

    int-to-double v13, v8

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    add-int/lit8 v11, v11, 0x1

    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    add-int v13, v7, v9

    sub-int/2addr v12, v13

    int-to-double v12, v12

    int-to-double v14, v9

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    add-int/lit8 v12, v12, 0x1

    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v14, v10, Landroid/graphics/Rect;->left:I

    neg-int v14, v14

    iget v15, v10, Landroid/graphics/Rect;->top:I

    neg-int v15, v15

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v10

    move v3, v14

    move v4, v15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->paintEmptyPages(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move v1, v12

    if-ge v0, v1, :cond_3

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_2

    mul-int v18, v17, v8

    add-int v18, v18, v6

    mul-int v19, v16, v9

    add-int v19, v19, v7

    add-int v20, v18, v8

    add-int v21, v19, v9

    move-object v0, v14

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v15, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v15, v14}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move-object v0, v15

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v21, v0

    move-object v0, v14

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/reader/JSurface;->getIndex(III)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    move-object/from16 v19, v0

    aget-object v18, v19, v18

    if-eqz v18, :cond_1

    monitor-enter v18

    :try_start_1
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    sget-object v20, Lcom/adobe/reader/PageView;->m_paint:Landroid/graphics/Paint;

    move-object v0, v13

    move-object/from16 v1, v19

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    move v9, v0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/adobe/reader/JSurface;->purgeOffscreenTiles(IIIIZ)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    move v8, v0

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    :cond_3
    return-object v5
.end method

.method public getCurrentDirectory()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->getCurrentDirectory(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPageNumber()I
    .locals 4

    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget v0, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    return v0

    :pswitch_1
    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->getCurrentPageNumber(J)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollY()I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    div-double/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->getPageByOffset(D)I

    move-result v0

    iput v0, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrentZoomLevel()D
    .locals 2

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    return-wide v0
.end method

.method public getDirectoriesInDirectory()[Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->getDirectoriesInDirectory(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mDocPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFilesInDirectory()[Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->getFilesInDirectory(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsSwitchViewModePending()Z
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mSwitchViewModePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxZoomLevel()D
    .locals 2

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mMaxZoomLevel:D

    return-wide v0
.end method

.method public getMinZoomLevel()D
    .locals 2

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mMinZoomLevel:D

    return-wide v0
.end method

.method public getNextPageBitmapForSinglePageMode()Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x2

    iget v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mNextPageTiles:[Lcom/adobe/reader/Tile;

    iget v1, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->getPrevNextPageBitmapForSinglePageMode([Lcom/adobe/reader/Tile;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumPages()I
    .locals 1

    iget v0, p0, Lcom/adobe/reader/PageView;->mNumPages:I

    return v0
.end method

.method public getPageHeightArray(I)[D
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/reader/PageView;->mHasUniformPages:Z

    :goto_0
    new-array v0, p1, [D

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mPagesHeight:[D

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPagesHeight:[D

    return-object v0

    :cond_0
    iput-boolean v0, p0, Lcom/adobe/reader/PageView;->mHasUniformPages:Z

    goto :goto_0
.end method

.method public getPageWidthArray(I)[D
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/reader/PageView;->mHasUniformPages:Z

    :goto_0
    new-array v0, p1, [D

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mPagesWidth:[D

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPagesWidth:[D

    return-object v0

    :cond_0
    iput-boolean v0, p0, Lcom/adobe/reader/PageView;->mHasUniformPages:Z

    goto :goto_0
.end method

.method public getPortfolioFileNameToOpen()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPortfolioOpenFileName:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mPortfolioOpenFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPortfolioOpenFileName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public getPrevPageBitmapForSinglePageMode()Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x2

    iget v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mPrevPageTiles:[Lcom/adobe/reader/Tile;

    iget v1, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->getPrevNextPageBitmapForSinglePageMode([Lcom/adobe/reader/Tile;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    iget v0, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    iget v0, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getViewMode()I
    .locals 1

    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    return v0
.end method

.method public getXGutterArray()[I
    .locals 2

    iget v0, p0, Lcom/adobe/reader/PageView;->mNumPages:I

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->getNumPages(J)I

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lcom/adobe/reader/PageView;->mHasUniformPages:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mXGutterArray:[I

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mXGutterArray:[I

    return-object v0

    :cond_1
    iget v0, p0, Lcom/adobe/reader/PageView;->mNumPages:I

    goto :goto_0
.end method

.method getXYGutterAtMinZoomMode(I)[I
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mHasUniformPages:Z

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mXGutterArray:[I

    aget v2, v2, v0

    aput v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mYGutterArray:[I

    aget v0, v3, v0

    aput v0, v1, v2

    return-object v1

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public getYGutterArray()[I
    .locals 2

    iget v0, p0, Lcom/adobe/reader/PageView;->mNumPages:I

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->getNumPages(J)I

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lcom/adobe/reader/PageView;->mHasUniformPages:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mYGutterArray:[I

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mYGutterArray:[I

    return-object v0

    :cond_1
    iget v0, p0, Lcom/adobe/reader/PageView;->mNumPages:I

    goto :goto_0
.end method

.method public getmLastPinchGestureTime()J
    .locals 2

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mLastPinchGestureTime:J

    return-wide v0
.end method

.method public gotoNextPage(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    iget v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->showUIElems()V

    :goto_1
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/adobe/reader/PageView;->sendNextPageMessage()V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    invoke-virtual {p0, v2, v1}, Lcom/adobe/reader/PageView;->handleScroll(II)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->canScrollDown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->sendNextPageMessage()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lcom/adobe/reader/AdobeReader;->resetTimerHandlerForUIElems(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public gotoPageInSinglePageMode(I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    if-ge v0, p1, :cond_2

    move v0, v1

    :goto_0
    iget v1, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    invoke-direct {p0, v1, v0}, Lcom/adobe/reader/PageView;->cacheTileForFirstScreen(IZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->clearAllTiles()V

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->scrollDocument()V

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/reader/PageView;->gotoPage(JI)V

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->resetAllZoomLevels()V

    iput p1, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    const/4 v0, 0x2

    iget v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/adobe/reader/PageView;->fetchTileFromPrevNextCache(I)V

    :cond_1
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mIsGoToPagePerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getUIThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public gotoPrevPage(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    iget v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->showUIElems()V

    :goto_1
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/adobe/reader/PageView;->sendPrevPageMessage()V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    neg-int v1, v1

    invoke-virtual {p0, v2, v1}, Lcom/adobe/reader/PageView;->handleScroll(II)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->canScrollUp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->sendPrevPageMessage()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lcom/adobe/reader/AdobeReader;->resetTimerHandlerForUIElems(Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public handleDeleteTileFromDiskMessage(II)V
    .locals 4

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, p1, p2, v2}, Lcom/adobe/reader/JSurface;->getTile(III)Lcom/adobe/reader/Tile;

    move-result-object v1

    monitor-exit v0

    if-nez v1, :cond_0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    monitor-enter v1

    :try_start_1
    invoke-virtual {v1}, Lcom/adobe/reader/Tile;->deleteFromDisk()V

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public handleDeleteTilesFromDiskMessage()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/adobe/reader/AdobeReader;->getTileCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/reader/AdobeReader;->deleteAllFilesInDirectory(Ljava/io/File;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public handleFetchPrevNextTilesMessage(II)V
    .locals 20

    invoke-direct/range {p0 .. p0}, Lcom/adobe/reader/PageView;->checkForZoomChangeMessages()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    sget v13, Lcom/adobe/reader/JSurface;->sTileWidth:I

    sget v14, Lcom/adobe/reader/JSurface;->sTileHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    move v5, v0

    int-to-double v5, v5

    int-to-double v7, v13

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v15, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    move v5, v0

    int-to-double v5, v5

    int-to-double v7, v14

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v16, v0

    const/4 v5, 0x1

    move v0, v5

    move/from16 v1, p1

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/adobe/reader/JSurface;->releasePrevPageTiles()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    mul-int v6, v15, v16

    new-array v6, v6, [Lcom/adobe/reader/Tile;

    iput-object v6, v5, Lcom/adobe/reader/JSurface;->mPrevPageTiles:[Lcom/adobe/reader/Tile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    move/from16 v0, p2

    move-object v1, v5

    iput v0, v1, Lcom/adobe/reader/JSurface;->mPageNumForPrevPageTiles:I

    :goto_0
    const/4 v5, 0x0

    move/from16 v17, v5

    :goto_1
    move/from16 v0, v17

    move v1, v15

    if-ge v0, v1, :cond_0

    const/4 v5, 0x0

    move/from16 v18, v5

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    mul-int v8, v17, v13

    mul-int v9, v18, v14

    new-instance v19, Lcom/adobe/reader/Tile;

    move-object/from16 v0, v19

    move v1, v13

    move v2, v14

    move v3, v8

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/reader/Tile;-><init>(IIII)V

    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-nez v5, :cond_4

    :cond_2
    :goto_3
    add-int/lit8 v5, v18, 0x1

    move/from16 v18, v5

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/adobe/reader/JSurface;->releaseNextPageTiles()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    mul-int v6, v15, v16

    new-array v6, v6, [Lcom/adobe/reader/Tile;

    iput-object v6, v5, Lcom/adobe/reader/JSurface;->mNextPageTiles:[Lcom/adobe/reader/Tile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    move/from16 v0, p2

    move-object v1, v5

    iput v0, v1, Lcom/adobe/reader/JSurface;->mPageNumForNextPageTiles:I

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/adobe/reader/PageView;->mARWin:J

    move-wide v6, v0

    add-int v10, v8, v13

    add-int v11, v9, v14

    move-object/from16 v5, p0

    move/from16 v12, p2

    invoke-direct/range {v5 .. v12}, Lcom/adobe/reader/PageView;->paintRectForMinZoomMode(JIIIII)V

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    sget-object v6, Lcom/adobe/reader/ARBitmapPool;->sPixels:[I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v8, v0

    iget v8, v8, Lcom/adobe/reader/JSurface;->m_width:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v11, v13

    move v12, v14

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move/from16 v0, p2

    move-object/from16 v1, v19

    iput v0, v1, Lcom/adobe/reader/Tile;->mPage:I

    const/4 v5, 0x1

    move v0, v5

    move/from16 v1, p1

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    iget-object v5, v5, Lcom/adobe/reader/JSurface;->mPrevPageTiles:[Lcom/adobe/reader/Tile;

    mul-int v6, v17, v16

    add-int v6, v6, v18

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v19

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/reader/PageView;->updatePrevNextPageTiles([Lcom/adobe/reader/Tile;Lcom/adobe/reader/Tile;I)V

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    iget-object v5, v5, Lcom/adobe/reader/JSurface;->mNextPageTiles:[Lcom/adobe/reader/Tile;

    mul-int v6, v17, v16

    add-int v6, v6, v18

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v19

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/reader/PageView;->updatePrevNextPageTiles([Lcom/adobe/reader/Tile;Lcom/adobe/reader/Tile;I)V

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v17, 0x1

    move/from16 v17, v5

    goto/16 :goto_1
.end method

.method public handleFling(FF)V
    .locals 10

    const/4 v9, 0x2

    const/high16 v7, 0x43fa0000    # 500.0f

    const/high16 v6, -0x3c060000    # -500.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x3

    iget v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v0, v1, :cond_3

    cmpl-float v0, p1, v7

    if-lez v0, :cond_2

    invoke-virtual {p0, v5}, Lcom/adobe/reader/PageView;->gotoPrevPage(Z)V

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/reader/PageView;->mLastFlingGestureInReflowTime:J

    :cond_1
    :goto_1
    return-void

    :cond_2
    cmpg-float v0, p1, v6

    if-gez v0, :cond_0

    invoke-virtual {p0, v5}, Lcom/adobe/reader/PageView;->gotoNextPage(Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v9, v2, :cond_8

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mLastScrollTimeInSinglePage:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    aget v0, v0, v5

    iget v1, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_4

    move v0, v5

    :cond_4
    cmpl-float v1, p1, v7

    if-lez v1, :cond_5

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollX()I

    move-result v1

    if-ne v1, v5, :cond_5

    invoke-virtual {p0, v5}, Lcom/adobe/reader/PageView;->gotoPrevPage(Z)V

    move v0, v4

    :goto_2
    if-nez v0, :cond_1

    iget v0, p0, Lcom/adobe/reader/PageView;->mHorizontalGutter:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    aget v0, v0, v5

    iget v1, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    sub-int/2addr v0, v1

    move v6, v0

    :goto_3
    iget v0, p0, Lcom/adobe/reader/PageView;->mVerticalGutter:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    aget v0, v0, v4

    iget v1, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    sub-int/2addr v0, v1

    move v8, v0

    :goto_4
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollY()I

    move-result v2

    neg-float v3, p1

    float-to-int v3, v3

    neg-float v4, p2

    float-to-int v4, v4

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v9, v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/reader/PageView;->mLastScrollTimeInSinglePage:J

    goto :goto_1

    :cond_5
    cmpg-float v1, p1, v6

    if-gez v1, :cond_8

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollX()I

    move-result v1

    if-ne v1, v0, :cond_8

    invoke-virtual {p0, v5}, Lcom/adobe/reader/PageView;->gotoNextPage(Z)V

    move v0, v4

    goto :goto_2

    :cond_6
    move v8, v5

    goto :goto_4

    :cond_7
    move v6, v5

    goto :goto_3

    :cond_8
    move v0, v5

    goto :goto_2
.end method

.method public handleLoadTileFromDiskMessage(II)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, p1, p2, v2}, Lcom/adobe/reader/JSurface;->getTile(III)Lcom/adobe/reader/Tile;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    sget v0, Lcom/adobe/reader/JSurface;->sTileWidth:I

    add-int/2addr v0, p1

    sget v1, Lcom/adobe/reader/JSurface;->sTileHeight:I

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/adobe/reader/PageView;->postInvalidate(IIII)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    monitor-enter v1

    :try_start_2
    invoke-virtual {v1}, Lcom/adobe/reader/Tile;->isOnDisk()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, p1, p2, v2}, Lcom/adobe/reader/JSurface;->deleteTile(III)V

    sget v0, Lcom/adobe/reader/JSurface;->sTileWidth:I

    add-int/2addr v0, p1

    sget v2, Lcom/adobe/reader/JSurface;->sTileHeight:I

    add-int/2addr v2, p2

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/adobe/reader/PageView;->postInvalidate(IIII)V

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-direct {p0, p1, p2, v4}, Lcom/adobe/reader/PageView;->reduceMemoryUsage(IIZ)V

    monitor-enter v1

    :try_start_4
    invoke-virtual {v1}, Lcom/adobe/reader/Tile;->loadFromDisk()V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    sget v0, Lcom/adobe/reader/JSurface;->sTileWidth:I

    add-int/2addr v0, p1

    sget v1, Lcom/adobe/reader/JSurface;->sTileHeight:I

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/adobe/reader/PageView;->postInvalidate(IIII)V

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public handleOpenDocumentMessage()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-object v6, p0, Lcom/adobe/reader/PageView;->mReflowBitmap:Landroid/graphics/Bitmap;

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mDocPath:Ljava/lang/String;

    iget v3, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adobe/reader/PageView;->openDocument(JLjava/lang/String;I)V

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->isPortfolio(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/reader/PageView;->mIsPortfolioDoc:Z

    invoke-static {}, Lcom/adobe/reader/AdobeReader;->HasPendingError()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mIsPasswdDialogNotShown:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->getJSurface(J)Lcom/adobe/reader/JSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->getNumPages(J)I

    move-result v0

    iput v0, p0, Lcom/adobe/reader/PageView;->mNumPages:I

    iput-boolean v5, p0, Lcom/adobe/reader/PageView;->mDocOpened:Z

    iput-boolean v4, p0, Lcom/adobe/reader/PageView;->mIsDocViewDrawnOnce:Z

    invoke-virtual {p0, v6}, Lcom/adobe/reader/PageView;->launchARPortfolioUI(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mIsScrolling:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->resetAllZoomLevels()V

    iput-boolean v5, p0, Lcom/adobe/reader/PageView;->mCanPerformPrefetch:Z

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->postInvalidate()V

    return-void
.end method

.method public handlePaintRectIntoTilesMessage(Landroid/graphics/Rect;I)V
    .locals 30

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mViewMode:I

    move v6, v0

    if-ne v5, v6, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    move v5, v0

    move v0, v5

    move/from16 v1, p2

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/adobe/reader/PageView;->checkForZoomChangeMessages()Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    iget v11, v5, Lcom/adobe/reader/JSurface;->m_width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    iget v12, v5, Lcom/adobe/reader/JSurface;->m_height:I

    new-instance v23, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    add-int/2addr v7, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    move-object v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/2addr v8, v12

    move-object/from16 v0, v23

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x1

    new-instance v6, Landroid/graphics/Rect;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v5, 0x0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v6, v11, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    sub-int/2addr v6, v11

    sub-int v6, v8, v6

    move v0, v6

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->right:I

    :cond_3
    if-le v7, v12, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    sub-int/2addr v7, v12

    sub-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_4
    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/adobe/reader/PageView;->areTilesWithinRectAvailable(Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, 0x1

    :cond_5
    :goto_1
    if-eqz v5, :cond_14

    move-object/from16 v24, v23

    :goto_2
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v14

    sget v25, Lcom/adobe/reader/JSurface;->sTileWidth:I

    sget v26, Lcom/adobe/reader/JSurface;->sTileHeight:I

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    div-int v5, v5, v25

    mul-int v6, v5, v25

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    div-int v5, v5, v26

    mul-int v7, v5, v26

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    sub-int/2addr v5, v6

    int-to-double v8, v5

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide v15, v0

    div-double/2addr v8, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    move-wide v0, v8

    double-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    sub-int/2addr v5, v7

    int-to-double v8, v5

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide v15, v0

    div-double/2addr v8, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    move-wide v0, v8

    double-to-int v0, v0

    move/from16 v28, v0

    const/4 v10, -0x1

    move-object/from16 v5, p0

    move v8, v6

    move v9, v7

    invoke-direct/range {v5 .. v10}, Lcom/adobe/reader/PageView;->ensureMemoryAvailable(IIIII)Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    iget-object v5, v5, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v8, v0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Lcom/adobe/reader/JSurface;->purgeTiles(IIIZ)Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    move-object/from16 v29, v5

    :goto_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/adobe/reader/PageView;->mARWin:J

    move-wide v9, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    move-wide v15, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v18}, Lcom/adobe/reader/PageView;->paintRectAtLocation(JIIIIDII)V

    sget-object v16, Lcom/adobe/reader/ARBitmapPool;->sPixels:[I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/adobe/reader/JSurface;->m_width:I

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v15, v29

    move/from16 v21, v13

    move/from16 v22, v14

    invoke-virtual/range {v15 .. v22}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    const/4 v5, 0x0

    move v11, v5

    :goto_4
    move v0, v11

    move/from16 v1, v28

    if-ge v0, v1, :cond_12

    const/4 v5, 0x0

    move v12, v5

    :goto_5
    move v0, v12

    move/from16 v1, v27

    if-ge v0, v1, :cond_11

    mul-int v5, v12, v25

    add-int v8, v6, v5

    mul-int v5, v11, v26

    add-int v9, v7, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mTileRect:Landroid/graphics/Rect;

    move-object v5, v0

    add-int v10, v8, v25

    add-int v13, v9, v26

    invoke-virtual {v5, v8, v9, v10, v13}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    iget-object v5, v5, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v5

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    move-object v13, v0

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-virtual {v10, v8, v9, v13}, Lcom/adobe/reader/JSurface;->getTile(III)Lcom/adobe/reader/Tile;

    move-result-object v10

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v10, :cond_7

    iget-object v5, v10, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_7

    iget-object v5, v10, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v5

    if-nez v5, :cond_13

    :cond_7
    const/4 v10, -0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/adobe/reader/PageView;->ensureMemoryAvailable(IIIII)Z

    move-result v5

    if-nez v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    iget-object v5, v5, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v5

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v10, v0

    const/4 v13, -0x1

    const/4 v14, 0x0

    invoke-virtual {v10, v8, v9, v13, v14}, Lcom/adobe/reader/JSurface;->purgeTiles(IIIZ)Z

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_8
    new-instance v5, Lcom/adobe/reader/Tile;

    move-object v0, v5

    move/from16 v1, v25

    move/from16 v2, v26

    move v3, v8

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/reader/Tile;-><init>(IIII)V

    if-eqz v5, :cond_9

    iget-object v10, v5, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v10, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    iget-object v5, v5, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v5

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v10, v0

    const/4 v13, -0x1

    const/4 v14, 0x0

    invoke-virtual {v10, v8, v9, v13, v14}, Lcom/adobe/reader/JSurface;->purgeTiles(IIIZ)Z

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    new-instance v5, Lcom/adobe/reader/Tile;

    move-object v0, v5

    move/from16 v1, v25

    move/from16 v2, v26

    move v3, v8

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/reader/Tile;-><init>(IIII)V

    :cond_a
    if-eqz v5, :cond_b

    iget-object v10, v5, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v10, :cond_d

    :cond_b
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v8, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->postInvalidate(IIII)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/adobe/reader/PageView;->sendPaintTilesMessage(Landroid/graphics/Rect;Z)V

    goto/16 :goto_0

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    :catch_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v5, v0

    iget-object v5, v5, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v5

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v8, v0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Lcom/adobe/reader/JSurface;->purgeTiles(IIIZ)Z

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v29, v5

    goto/16 :goto_3

    :catchall_1
    move-exception v6

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v6

    :catchall_2
    move-exception v6

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v6

    :catchall_3
    move-exception v6

    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v6

    :catchall_4
    move-exception v6

    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v6

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    move-object v13, v0

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-virtual {v10, v8, v9, v13}, Lcom/adobe/reader/JSurface;->getIndex(III)I

    move-result v10

    new-instance v13, Landroid/graphics/Canvas;

    iget-object v14, v5, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v13, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Canvas;->drawColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mTileRect:Landroid/graphics/Rect;

    move-object v14, v0

    neg-int v15, v8

    move v0, v9

    neg-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->paintEmptyPages(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v13, v0

    iget-object v13, v13, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v13

    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v14, v0

    iget-object v14, v14, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v14, v14, v10

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v14, v0

    iget-object v14, v14, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v14, v14, v10

    invoke-virtual {v14}, Lcom/adobe/reader/Tile;->releaseBitmap()V

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v14, v0

    iget-object v14, v14, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aput-object v5, v14, v10

    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :goto_7
    if-eqz v5, :cond_f

    monitor-enter v5

    :try_start_c
    invoke-virtual {v5}, Lcom/adobe/reader/Tile;->isInMemory()Z

    move-result v10

    if-eqz v10, :cond_e

    new-instance v10, Landroid/graphics/Canvas;

    iget-object v13, v5, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v10, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v13, 0x1

    iput-boolean v13, v5, Lcom/adobe/reader/Tile;->mIsDirty:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mStoredBitmapRect:Landroid/graphics/Rect;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mStoredBitmapRect:Landroid/graphics/Rect;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mTileRect:Landroid/graphics/Rect;

    move-object v14, v0

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mTileRect:Landroid/graphics/Rect;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mStoredBitmapRect:Landroid/graphics/Rect;

    move-object v14, v0

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mStoredBitmapRect:Landroid/graphics/Rect;

    move-object v13, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v14, v0

    neg-int v14, v14

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    neg-int v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mTileRect:Landroid/graphics/Rect;

    move-object v13, v0

    neg-int v8, v8

    neg-int v9, v9

    invoke-virtual {v13, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mStoredBitmapRect:Landroid/graphics/Rect;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mTileRect:Landroid/graphics/Rect;

    move-object v9, v0

    sget-object v13, Lcom/adobe/reader/PageView;->m_paint:Landroid/graphics/Paint;

    move-object v0, v10

    move-object/from16 v1, v29

    move-object v2, v8

    move-object v3, v9

    move-object v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_e
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :cond_f
    add-int/lit8 v5, v12, 0x1

    move v12, v5

    goto/16 :goto_5

    :cond_10
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object v14, v0

    iget v15, v14, Lcom/adobe/reader/JSurface;->mNumTiles:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Lcom/adobe/reader/JSurface;->mNumTiles:I

    goto/16 :goto_6

    :catchall_5
    move-exception v5

    monitor-exit v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v5

    :catchall_6
    move-exception v6

    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v6

    :cond_11
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    goto/16 :goto_4

    :cond_12
    invoke-static {}, Ljava/lang/System;->gc()V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v8, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->postInvalidate(IIII)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/adobe/reader/PageView;->sendPaintTilesMessage(Landroid/graphics/Rect;Z)V

    goto/16 :goto_0

    :cond_13
    move-object v5, v10

    goto/16 :goto_7

    :cond_14
    move-object/from16 v24, p1

    goto/16 :goto_2
.end method

.method public handlePaintTilesMessage(Landroid/graphics/Rect;)V
    .locals 12

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/adobe/reader/PageView;->sendPaintTilesMessage(Landroid/graphics/Rect;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mZoomLevelChanged:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/adobe/reader/PageView;->sendPaintTilesMessage(Landroid/graphics/Rect;Z)V

    goto :goto_0

    :cond_3
    sget v6, Lcom/adobe/reader/JSurface;->sTileWidth:I

    sget v7, Lcom/adobe/reader/JSurface;->sTileHeight:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    div-int/2addr v0, v6

    mul-int v1, v0, v6

    iget v0, p1, Landroid/graphics/Rect;->top:I

    div-int/2addr v0, v7

    mul-int v2, v0, v7

    const/4 v0, 0x3

    iget v3, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v0, v3, :cond_4

    add-int v3, v1, v6

    add-int v4, v2, v7

    const/4 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/reader/PageView;->fetchTile(IIIII)V

    goto :goto_0

    :cond_4
    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int v3, v1, v6

    sub-int/2addr v0, v3

    int-to-double v3, v0

    int-to-double v8, v6

    div-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    add-int/lit8 v8, v0, 0x1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    add-int v3, v2, v7

    sub-int/2addr v0, v3

    int-to-double v3, v0

    int-to-double v9, v7

    div-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    add-int/lit8 v9, v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x0

    move v10, v0

    :goto_1
    if-ge v10, v9, :cond_6

    const/4 v0, 0x0

    move v11, v0

    :goto_2
    if-ge v11, v8, :cond_5

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->checkForZoomChangeMessages()Z

    move-result v0

    if-nez v0, :cond_0

    mul-int v0, v11, v6

    add-int v3, v1, v0

    mul-int v0, v10, v7

    add-int v4, v2, v0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/reader/PageView;->fetchTile(IIIII)V

    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/adobe/reader/PageView;->scrollDocument()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x2

    iget v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v0, v1, :cond_a

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mPrevPageTiles:[Lcom/adobe/reader/Tile;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget v0, v0, Lcom/adobe/reader/JSurface;->mPageNumForPrevPageTiles:I

    iget v1, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_8

    :cond_7
    const/4 v0, 0x1

    iget v1, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->sendFetchPrevNextPageTilesMessage(II)V

    :cond_8
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mNextPageTiles:[Lcom/adobe/reader/Tile;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget v0, v0, Lcom/adobe/reader/JSurface;->mPageNumForNextPageTiles:I

    iget v1, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_a

    :cond_9
    const/4 v0, 0x2

    iget v1, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->sendFetchPrevNextPageTilesMessage(II)V

    :cond_a
    const/4 v0, 0x3

    iget v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/adobe/reader/PageView;->sendPrefetchMessage(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method public handlePrefetchOneTileMessage(IIII)V
    .locals 6

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mIsScrolling:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/reader/PageView;->mCanPerformPrefetch:Z

    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/adobe/reader/JSurface;->sTileWidth:I

    div-int v0, p1, v0

    sget v1, Lcom/adobe/reader/JSurface;->sTileWidth:I

    div-int v1, p3, v1

    sget v2, Lcom/adobe/reader/JSurface;->sTileHeight:I

    div-int v2, p2, v2

    sget v3, Lcom/adobe/reader/JSurface;->sTileHeight:I

    div-int v3, p4, v3

    sub-int v4, v0, v1

    sub-int/2addr v0, v1

    mul-int/2addr v0, v4

    sget v1, Lcom/adobe/reader/JSurface;->sTileWidth:I

    mul-int/2addr v0, v1

    sub-int v1, v2, v3

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    sget v2, Lcom/adobe/reader/JSurface;->sTileHeight:I

    mul-int/2addr v1, v2

    add-int v5, v0, v1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/reader/PageView;->fetchTile(IIIII)V

    goto :goto_0
.end method

.method public handlePrefetchTilesMessage(Landroid/graphics/Rect;)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mZoomLevelChanged:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-lez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v6, Lcom/adobe/reader/JSurface;->sTileWidth:I

    sget v7, Lcom/adobe/reader/JSurface;->sTileHeight:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    div-int/2addr v5, v6

    mul-int v8, v5, v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    div-int/2addr v5, v7

    mul-int v9, v5, v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    add-int v10, v8, v6

    sub-int/2addr v5, v10

    int-to-double v10, v5

    int-to-double v12, v6

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v5, v10

    add-int/lit8 v10, v5, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    add-int v11, v9, v7

    sub-int/2addr v5, v11

    int-to-double v11, v5

    int-to-double v13, v7

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v5, v11

    add-int/lit8 v11, v5, 0x1

    div-int/lit8 v5, v10, 0x2

    mul-int/2addr v5, v6

    add-int v12, v8, v5

    div-int/lit8 v5, v11, 0x2

    mul-int/2addr v5, v7

    add-int v13, v9, v5

    invoke-virtual/range {p0 .. p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/adobe/reader/AdobeReader;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x14

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/adobe/reader/JSurface;->mNumTiles:I

    move/from16 v18, v0

    if-eqz v18, :cond_5

    const/16 v18, 0x0

    move/from16 v22, v18

    move/from16 v18, v17

    move/from16 v17, v22

    :goto_1
    const/16 v19, 0x1f4

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    move-object/from16 v20, v0

    aget-object v20, v20, v17

    if-nez v20, :cond_2

    monitor-exit v19

    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    move-object/from16 v20, v0

    aget-object v20, v20, v17

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter v20

    :try_start_1
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/adobe/reader/Tile;->mIsDirty:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/adobe/reader/Tile;->mLeft:I

    move/from16 v19, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/adobe/reader/Tile;->mTop:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->sendPrefetchOneTileMessage(IIII)V

    add-int/lit8 v18, v18, 0x1

    :cond_3
    monitor-exit v20

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    :cond_4
    move/from16 v17, v18

    :cond_5
    sub-int v16, v16, v17

    move/from16 v22, v16

    move/from16 v16, v14

    move/from16 v14, v22

    :goto_3
    if-lez v14, :cond_16

    if-eqz v15, :cond_16

    const/4 v15, 0x0

    const/16 v17, 0x0

    move/from16 v22, v17

    move/from16 v17, v15

    move v15, v14

    move/from16 v14, v22

    :goto_4
    mul-int/lit8 v18, v16, 0x2

    const/16 v19, 0x1

    sub-int v18, v18, v19

    add-int v18, v18, v11

    move v0, v14

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/reader/PageView;->mCanPerformPrefetch:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    invoke-virtual {v5}, Lcom/adobe/reader/AdobeReader;->isBackgroundThreadStopped()Z

    move-result v18

    if-eqz v18, :cond_7

    :cond_6
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/reader/PageView;->mCanPerformPrefetch:Z

    goto/16 :goto_0

    :cond_7
    add-int v18, v10, v16

    const/16 v19, 0x1

    sub-int v18, v18, v19

    mul-int v18, v18, v6

    add-int v18, v18, v8

    sub-int v19, v14, v16

    mul-int v19, v19, v7

    add-int v19, v19, v9

    if-ltz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    if-ltz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/adobe/reader/PageView;->isTilePresent(II)Z

    move-result v20

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->sendPrefetchOneTileMessage(IIII)V

    add-int/lit8 v15, v15, -0x1

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_9
    const/4 v14, 0x1

    :goto_5
    mul-int/lit8 v18, v16, 0x2

    const/16 v19, 0x1

    sub-int v18, v18, v19

    add-int v18, v18, v10

    move v0, v14

    move/from16 v1, v18

    if-gt v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/reader/PageView;->mCanPerformPrefetch:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    invoke-virtual {v5}, Lcom/adobe/reader/AdobeReader;->isBackgroundThreadStopped()Z

    move-result v18

    if-eqz v18, :cond_b

    :cond_a
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/reader/PageView;->mCanPerformPrefetch:Z

    goto/16 :goto_0

    :cond_b
    sub-int v18, v14, v16

    mul-int v18, v18, v6

    add-int v18, v18, v8

    add-int v19, v11, v16

    const/16 v20, 0x1

    sub-int v19, v19, v20

    mul-int v19, v19, v7

    add-int v19, v19, v9

    if-ltz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    if-ltz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/adobe/reader/PageView;->isTilePresent(II)Z

    move-result v20

    if-nez v20, :cond_c

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->sendPrefetchOneTileMessage(IIII)V

    add-int/lit8 v15, v15, -0x1

    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_d
    const/4 v14, 0x1

    :goto_6
    mul-int/lit8 v18, v16, 0x2

    const/16 v19, 0x1

    sub-int v18, v18, v19

    add-int v18, v18, v11

    move v0, v14

    move/from16 v1, v18

    if-gt v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/reader/PageView;->mCanPerformPrefetch:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    invoke-virtual {v5}, Lcom/adobe/reader/AdobeReader;->isBackgroundThreadStopped()Z

    move-result v18

    if-eqz v18, :cond_f

    :cond_e
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/reader/PageView;->mCanPerformPrefetch:Z

    goto/16 :goto_0

    :cond_f
    mul-int v18, v16, v6

    sub-int v18, v8, v18

    sub-int v19, v14, v16

    mul-int v19, v19, v7

    add-int v19, v19, v9

    if-ltz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    if-ltz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/adobe/reader/PageView;->isTilePresent(II)Z

    move-result v20

    if-nez v20, :cond_10

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->sendPrefetchOneTileMessage(IIII)V

    add-int/lit8 v15, v15, -0x1

    :cond_10
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_11
    const/4 v14, 0x0

    :goto_7
    mul-int/lit8 v18, v16, 0x2

    const/16 v19, 0x1

    sub-int v18, v18, v19

    add-int v18, v18, v10

    move v0, v14

    move/from16 v1, v18

    if-ge v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/reader/PageView;->mCanPerformPrefetch:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    invoke-virtual {v5}, Lcom/adobe/reader/AdobeReader;->isBackgroundThreadStopped()Z

    move-result v18

    if-eqz v18, :cond_13

    :cond_12
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/reader/PageView;->mCanPerformPrefetch:Z

    goto/16 :goto_0

    :cond_13
    sub-int v18, v14, v16

    mul-int v18, v18, v6

    add-int v18, v18, v8

    mul-int v19, v16, v7

    sub-int v19, v9, v19

    if-ltz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_14

    if-ltz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_14

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/adobe/reader/PageView;->isTilePresent(II)Z

    move-result v20

    if-nez v20, :cond_14

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->sendPrefetchOneTileMessage(IIII)V

    add-int/lit8 v15, v15, -0x1

    :cond_14
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_15
    add-int/lit8 v14, v16, 0x1

    move/from16 v16, v14

    move v14, v15

    move/from16 v15, v17

    goto/16 :goto_3

    :cond_16
    if-nez v14, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/adobe/reader/PageView;->sendPrefetchMessage(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method public handlePurgeOffscreenTilesMessage()V
    .locals 6

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollY()I

    move-result v2

    iget v3, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    iget v4, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/reader/JSurface;->purgeOffscreenTiles(IIIIZ)V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public handleSaveTilesToDiskMessage(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/reader/PageView;->reduceMemoryUsage(IIZ)V

    return-void
.end method

.method public handleScroll(II)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v7, v0, :cond_2

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    aget v0, v0, v5

    iget v1, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    move v0, v5

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v1, v2, :cond_9

    move v1, v6

    :goto_0
    if-eqz v1, :cond_1

    if-gez p1, :cond_1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollX()I

    move-result v2

    if-ne v2, v5, :cond_1

    move v0, v5

    :goto_1
    return v0

    :cond_1
    if-eqz v1, :cond_2

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollX()I

    move-result v1

    if-ne v1, v0, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollY()I

    move-result v1

    add-int v2, v0, p1

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    aget v3, v3, v5

    iget v4, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_8

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    aget v2, v2, v5

    iget v3, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    :goto_2
    add-int v3, v0, v2

    if-gez v3, :cond_7

    neg-int v0, v0

    :goto_3
    add-int v2, v1, p2

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    aget v3, v3, v6

    iget v4, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_6

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    aget v2, v2, v6

    iget v3, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    :goto_4
    add-int v3, v1, v2

    if-gez v3, :cond_5

    neg-int v1, v1

    :goto_5
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    move v0, v5

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v7, v2, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adobe/reader/PageView;->mLastScrollTimeInSinglePage:J

    :cond_4
    iget-object v2, p0, Lcom/adobe/reader/PageView;->mIsScrolling:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    neg-int v2, v0

    neg-int v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/adobe/reader/PageView;->scrollDocument(II)V

    invoke-virtual {p0, v0, v1}, Lcom/adobe/reader/PageView;->scrollBy(II)V

    move v0, v6

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_5

    :cond_6
    move v2, p2

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v2, p1

    goto :goto_2

    :cond_9
    move v1, v5

    goto :goto_0
.end method

.method public handleSetViewModeMessage(I)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->scrollDocument()V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->clearAllTiles()V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mPrevPageTiles:[Lcom/adobe/reader/Tile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {v0}, Lcom/adobe/reader/JSurface;->releasePrevPageTiles()V

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mNextPageTiles:[Lcom/adobe/reader/Tile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {v0}, Lcom/adobe/reader/JSurface;->releaseNextPageTiles()V

    :cond_1
    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-eq v3, v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mReflowBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iput p1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/reader/PageView;->setViewMode(JI)V

    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v3, v0, :cond_3

    sput-boolean v2, Lcom/adobe/reader/PageView;->mCanPerformZoomInAgain:Z

    sput-boolean v2, Lcom/adobe/reader/PageView;->mCanPerformZoomOutAgain:Z

    :cond_3
    invoke-direct {p0}, Lcom/adobe/reader/PageView;->resetAllZoomLevels()V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mSwitchViewModePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    sget-object v0, Lcom/adobe/reader/Runnables;->showUIElemsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleTap(DD)Z
    .locals 8

    const-wide v6, 0x4062c00000000000L    # 150.0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v5, v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getTopBarHeight()I

    move-result v0

    int-to-double v0, v0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    int-to-float v0, v0

    const v1, 0x3e3851ec    # 0.18f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    cmpl-double v2, v0, v6

    if-lez v2, :cond_2

    move-wide v0, v6

    :cond_2
    cmpg-double v2, p1, v0

    if-gez v2, :cond_3

    invoke-virtual {p0, v4}, Lcom/adobe/reader/PageView;->gotoPrevPage(Z)V

    move v0, v5

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    int-to-double v2, v2

    sub-double v0, v2, v0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_4

    invoke-virtual {p0, v4}, Lcom/adobe/reader/PageView;->gotoNextPage(Z)V

    move v0, v5

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_0
.end method

.method public handleWindowSizeChangedMessage(Z)V
    .locals 10

    invoke-static {}, Lcom/adobe/reader/AdobeReader;->HasPendingError()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/adobe/reader/PageView;->mIsPortfolioDoc:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/adobe/reader/PageView;->mIsZoomPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getUIThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v9

    iget-boolean v1, p0, Lcom/adobe/reader/PageView;->mDocOpened:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->removeUnnecessaryMessages()V

    invoke-virtual {v9}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0x32

    invoke-virtual {v9, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->clearAllTiles()V

    iget-object v1, p0, Lcom/adobe/reader/PageView;->m_reflowIsTileDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {v1}, Lcom/adobe/reader/JSurface;->releasePrevPageTiles()V

    iget-object v1, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {v1}, Lcom/adobe/reader/JSurface;->releaseNextPageTiles()V

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->scrollDocument()V

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mARWin:J

    iget v4, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    iget v5, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    iget v6, p0, Lcom/adobe/reader/PageView;->mOffscreenWidth:I

    iget v7, p0, Lcom/adobe/reader/PageView;->mOffscreenHeight:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/adobe/reader/PageView;->windowSizeChanged(JIIII)V

    iget-wide v1, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v1, v2}, Lcom/adobe/reader/PageView;->getJSurface(J)Lcom/adobe/reader/JSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    const/4 v1, 0x3

    iget v2, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/reader/PageView;->mReflowBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->getNumTilesToBeFreed()I

    move-result v2

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_3

    sget-object v1, Lcom/adobe/reader/ARBitmapPool;->sListAvailableBitmap:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/adobe/reader/ARBitmapPool;->freeBitmapFromMemory(Landroid/graphics/Bitmap;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget v1, v1, Lcom/adobe/reader/JSurface;->m_width:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget v2, v2, Lcom/adobe/reader/JSurface;->m_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/reader/PageView;->mReflowBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const/4 v1, 0x3

    iget v2, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-eq v1, v2, :cond_5

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->resetAllZoomLevels()V

    :cond_5
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/reader/PageView;->getAndCopyScaledBitmap(II)V

    invoke-virtual {v8}, Lcom/adobe/reader/AdobeReader;->getUIThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v9}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0x32

    invoke-virtual {v9, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->clearAllTiles()V

    goto/16 :goto_0
.end method

.method public inReflowMode()Z
    .locals 2

    const/4 v0, 0x3

    iget v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initializePageView()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/adobe/reader/PageView;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/adobe/reader/PageView;->setFocusableInTouchMode(Z)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->m_rect:Landroid/graphics/Rect;

    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/adobe/reader/ARGestureListener;

    invoke-direct {v2, p0}, Lcom/adobe/reader/ARGestureListener;-><init>(Lcom/adobe/reader/PageView;)V

    invoke-direct {v1, v0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/adobe/reader/PageView;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adobe/reader/PageView;->mScroller:Landroid/widget/Scroller;

    new-array v0, v5, [I

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    new-array v0, v5, [I

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    const/4 v0, 0x3

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mZoomLevels:[D

    invoke-virtual {p0, v3}, Lcom/adobe/reader/PageView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/adobe/reader/PageView;->setVerticalScrollBarEnabled(Z)V

    const/high16 v0, 0x3000000

    invoke-virtual {p0, v0}, Lcom/adobe/reader/PageView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mScrollXYPos:[Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mScrollXYPos:[Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    aput-object v1, v0, v3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mP1Begin:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mP2Begin:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mP1Init:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mP2Init:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mP1Prev:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mP2Prev:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mCurrentOffscreenRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mScrolledOffscreenRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mTileRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mStoredBitmapRect:Landroid/graphics/Rect;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/adobe/reader/PageView;->mDoubleTapZoomLevel:D

    iput-wide v0, p0, Lcom/adobe/reader/PageView;->mMaxZoomLevel:D

    iput-wide v0, p0, Lcom/adobe/reader/PageView;->mMinZoomLevel:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/reader/PageView;->mDoubleTapY:D

    iput-wide v0, p0, Lcom/adobe/reader/PageView;->mDoubleTapX:D

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/adobe/reader/PageView;->mDoubleTapAnimFinalScale:F

    iput v0, p0, Lcom/adobe/reader/PageView;->mDoubleTapAnimCurrentScale:F

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mPivotPoint:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mIsZoomPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput v4, p0, Lcom/adobe/reader/PageView;->mHorizontalGutter:I

    iput v4, p0, Lcom/adobe/reader/PageView;->mVerticalGutter:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mReflowBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/adobe/reader/PageView$1;

    invoke-direct {v0, p0}, Lcom/adobe/reader/PageView$1;-><init>(Lcom/adobe/reader/PageView;)V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/reader/ARBitmapPool;->initialize(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/adobe/reader/PageView;->setScrollbarFadingEnabled(Z)V

    new-instance v0, Lcom/adobe/reader/PageView$2;

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v5}, Lcom/adobe/reader/PageView$2;-><init>(Lcom/adobe/reader/PageView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public invalidateDirtyRect(IIII)V
    .locals 6

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mIsScrolling:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_rect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollX()I

    move-result v3

    sub-int v4, p3, p1

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollY()I

    move-result v4

    sub-int v5, p4, p2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/adobe/reader/PageView;->m_rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->m_rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/adobe/reader/PageView;->m_rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/adobe/reader/PageView;->postInvalidate(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/reader/PageView;->mIsOffscreenDirty:Z

    goto :goto_0
.end method

.method public isAtBeginningOfDocument()Z
    .locals 2

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->isAtBeginningOfDocument(J)Z

    move-result v0

    return v0
.end method

.method public isAtEndOfDocument()Z
    .locals 2

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->isAtEndOfDocument(J)Z

    move-result v0

    return v0
.end method

.method public isCancelSearchRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mCancelSearchRequested:Z

    return v0
.end method

.method public isDoubleTapAnimRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mIsRunningDoubleTapAnim:Z

    return v0
.end method

.method public isFindActivated()Z
    .locals 1

    sget-boolean v0, Lcom/adobe/reader/AdobeReader;->sIsFindActivated:Z

    return v0
.end method

.method public isPortfolio()Z
    .locals 2

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->isPortfolio(J)Z

    move-result v0

    return v0
.end method

.method protected isScrolling()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public launchARPortfolioUI(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mIsPortfolioDoc:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->isAcrobat8Portfolio(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/adobe/reader/AdobeReader;->ShowErrorDlg(IILcom/adobe/reader/PageView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->addDocPathToRecentlyViewed()V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/adobe/reader/ARPortfolioUI;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/adobe/reader/PageView;->changeDirectory(Ljava/lang/String;)Z

    :goto_1
    sget-object v2, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_PORTFOLIO_VIEWING:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    iput-object v2, v0, Lcom/adobe/reader/AdobeReader;->mCurrentActivity:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/adobe/reader/PageView;->mShowPortfolioBrowser:Z

    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/reader/AdobeReader;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/adobe/reader/PageView;->mPortfolioBrowserDirectory:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mPortfolioBrowserDirectory:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/adobe/reader/PageView;->changeDirectory(Ljava/lang/String;)Z

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/adobe/reader/PageView;->mPortfolioBrowserDirectory:Ljava/lang/String;

    goto :goto_1
.end method

.method markTilesWithinRectAsDirty(Landroid/graphics/Rect;I)V
    .locals 14

    sget v0, Lcom/adobe/reader/JSurface;->sTileWidth:I

    sget v1, Lcom/adobe/reader/JSurface;->sTileHeight:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    div-int/2addr v2, v0

    mul-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    div-int/2addr v3, v1

    mul-int/2addr v3, v1

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    int-to-double v4, v4

    int-to-double v6, v0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    int-to-double v5, v5

    int-to-double v7, v1

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_1

    mul-int v8, v7, v0

    add-int/2addr v8, v2

    mul-int v9, v6, v1

    add-int/2addr v9, v3

    iget-object v10, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v10, v10, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v10

    :try_start_0
    iget-object v11, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v12, p0, Lcom/adobe/reader/PageView;->mGalleyDims:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v11, v8, v9, v12}, Lcom/adobe/reader/JSurface;->getTile(III)Lcom/adobe/reader/Tile;

    move-result-object v8

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    monitor-enter v8

    const/4 v9, 0x1

    :try_start_1
    iput-boolean v9, v8, Lcom/adobe/reader/Tile;->mIsDirty:Z

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->sendDeleteTileMessage()V

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/adobe/reader/PageView;->sendPaintRectIntoTilesMessage(Landroid/graphics/Rect;I)V

    return-void
.end method

.method public nativeDocZoom()V
    .locals 9

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_reflowIsTileDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPivotPoint:Landroid/graphics/Point;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/reader/PageView;->mPivotPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP1Begin:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mP2Begin:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mP1Begin:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/adobe/reader/PageView;->mP2Begin:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mMinZoomLevel:D

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mMinZoomLevel:D

    move-wide v3, v0

    :goto_0
    invoke-direct {p0}, Lcom/adobe/reader/PageView;->scrollDocument()V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mZoomLevelChanged:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v7, p0, Lcom/adobe/reader/PageView;->mPivotPoint:Landroid/graphics/Point;

    monitor-enter v7

    :try_start_1
    iget-wide v1, p0, Lcom/adobe/reader/PageView;->mARWin:J

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPivotPoint:Landroid/graphics/Point;

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPivotPoint:Landroid/graphics/Point;

    iget v6, v0, Landroid/graphics/Point;->y:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/adobe/reader/PageView;->setCurrentZoomLevel(JDII)V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->resetOnScreenZoomLevels()V

    sget-boolean v0, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->getAndCopyScaledBitmap()V

    :goto_1
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getUIThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getUIThreadId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    sget-object v1, Lcom/adobe/reader/Runnables;->showScrollbarsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/adobe/reader/AdobeReader;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mMaxZoomLevel:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_3

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mMaxZoomLevel:D

    move-wide v3, v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mIsZoomPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v8}, Lcom/adobe/reader/PageView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v8}, Lcom/adobe/reader/PageView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_2

    :cond_3
    move-wide v3, v0

    goto :goto_0
.end method

.method public navigatePage(Z)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v4, v0, :cond_0

    iget v0, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    invoke-direct {p0, v0, p1}, Lcom/adobe/reader/PageView;->cacheTileForFirstScreen(IZ)V

    :cond_0
    const/4 v0, 0x3

    iget v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v0, v1, :cond_3

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->isAtBeginningOfDocument()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->isAtEndOfDocument()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mIsPageNavigationPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getUIThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_reflowIsTileDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->clearAllTiles()V

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->scrollDocument()V

    if-eqz p1, :cond_5

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->nextPage(J)V

    :goto_1
    if-eqz p1, :cond_6

    iget v0, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    :goto_2
    invoke-direct {p0}, Lcom/adobe/reader/PageView;->resetAllZoomLevels()V

    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v4, v0, :cond_4

    iget v0, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/adobe/reader/PageView;->fetchTileFromPrevNextCache(I)V

    :cond_4
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mIsPageNavigationPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getUIThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_5
    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->prevPage(J)V

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    goto :goto_2
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 10

    const/4 v8, 0x2

    const-wide v6, 0x3f747ae147ae147bL    # 0.005

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v9, 0x1

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mIsRunningDoubleTapAnim:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/adobe/reader/PageView;->mDoubleTapAnimCurrentScale:F

    iget v1, p0, Lcom/adobe/reader/PageView;->mDoubleTapAnimFinalScale:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/adobe/reader/PageView;->mDoubleTapAnimCurrentScale:F

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/adobe/reader/PageView;->mDoubleTapAnimFinalScale:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_8

    iget v0, p0, Lcom/adobe/reader/PageView;->mDoubleTapAnimFinalScale:F

    move v2, v0

    :goto_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/adobe/reader/PageView;->mDoubleTapAnimCurrentScale:F

    iget v3, p0, Lcom/adobe/reader/PageView;->mDoubleTapAnimCurrentScale:F

    iget-wide v6, p0, Lcom/adobe/reader/PageView;->mDoubleTapX:D

    double-to-float v6, v6

    iget-wide v7, p0, Lcom/adobe/reader/PageView;->mDoubleTapY:D

    double-to-float v8, v7

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x19

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v9}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x10a000b

    invoke-virtual {v0, v1, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/content/Context;I)V

    invoke-virtual {v0, p0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/adobe/reader/PageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iput v2, p0, Lcom/adobe/reader/PageView;->mDoubleTapAnimCurrentScale:F

    :cond_1
    :goto_1
    return-void

    :cond_2
    iput-boolean v5, p0, Lcom/adobe/reader/PageView;->mIsRunningDoubleTapAnim:Z

    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-eq v4, v0, :cond_3

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPivotPoint:Landroid/graphics/Point;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/reader/PageView;->mPivotPoint:Landroid/graphics/Point;

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mDoubleTapX:D

    double-to-int v2, v2

    iget-wide v3, p0, Lcom/adobe/reader/PageView;->mDoubleTapY:D

    double-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mIsZoomPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v8, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mTimerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    invoke-direct {p0}, Lcom/adobe/reader/PageView;->sendDoubleTapZoomMessage()V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mIsPinchZoomLimitAnimationRunning:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mMinZoomLevel:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v6

    if-gez v0, :cond_5

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mIsShrink:Z

    if-nez v0, :cond_7

    :cond_5
    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mMaxZoomLevel:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v6

    if-gez v0, :cond_6

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mIsShrink:Z

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mIsZoomPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mTimerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_2
    iput-boolean v5, p0, Lcom/adobe/reader/PageView;->mIsPinchZoomLimitAnimationRunning:Z

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v9}, Lcom/adobe/reader/PageView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v9}, Lcom/adobe/reader/PageView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_2

    :cond_8
    move v2, v0

    goto/16 :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 7

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mIsRunningOrientationChangeAnim:Z

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/adobe/reader/PageView;->mARWin:J

    iget v3, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    iget v4, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    iget v5, p0, Lcom/adobe/reader/PageView;->mOffscreenWidth:I

    iget v6, p0, Lcom/adobe/reader/PageView;->mOffscreenHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/adobe/reader/PageView;->windowSizeChanged(JIIII)V

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->getJSurface(J)Lcom/adobe/reader/JSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/reader/PageView;->mIsRunningOrientationChangeAnim:Z

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->resetAllZoomLevels()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mDocOpened:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mIsPortfolioDoc:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mIsPasswdDialogNotShown:Z

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v10

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_canvasWrapper:Lcom/adobe/reader/PageView$CanvasWrapper;

    if-nez v0, :cond_3

    new-instance v0, Lcom/adobe/reader/PageView$CanvasWrapper;

    invoke-direct {v0, p1}, Lcom/adobe/reader/PageView$CanvasWrapper;-><init>(Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/adobe/reader/PageView;->m_canvasWrapper:Lcom/adobe/reader/PageView$CanvasWrapper;

    :cond_3
    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_canvasWrapper:Lcom/adobe/reader/PageView$CanvasWrapper;

    invoke-virtual {v0, p1}, Lcom/adobe/reader/PageView$CanvasWrapper;->setCanvas(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mIsOffscreenDirty:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, v10, v12}, Lcom/adobe/reader/PageView;->sendPaintTilesMessage(Landroid/graphics/Rect;Z)V

    invoke-direct {p0, p1, v10}, Lcom/adobe/reader/PageView;->blitTilesToScreen(Landroid/graphics/Canvas;Landroid/graphics/Rect;)Z

    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iput-boolean v11, p0, Lcom/adobe/reader/PageView;->mIsOffscreenDirty:Z

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mIsDocViewDrawnOnce:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mIsPasswdDialogNotShown:Z

    if-eqz v0, :cond_1

    const-string v0, "AdobeReader"

    const-string v1, "Document Opened"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->addDocPathToRecentlyViewed()V

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->showUIElems()V

    iput-boolean v12, p0, Lcom/adobe/reader/PageView;->mIsDocViewDrawnOnce:Z

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, v10}, Lcom/adobe/reader/PageView;->blitTilesToScreen(Landroid/graphics/Canvas;Landroid/graphics/Rect;)Z

    move-result v0

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    invoke-direct {p0, v10}, Lcom/adobe/reader/PageView;->sendScrollMessage(Landroid/graphics/Rect;)V

    :cond_7
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mIsScrolling:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aget v2, v2, v11

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aget v3, v3, v12

    iget v4, p0, Lcom/adobe/reader/PageView;->mOffscreenWidth:I

    iget-object v5, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aget v5, v5, v11

    add-int/2addr v4, v5

    iget v5, p0, Lcom/adobe/reader/PageView;->mOffscreenHeight:I

    iget-object v6, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aget v6, v6, v12

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_canvasWrapper:Lcom/adobe/reader/PageView$CanvasWrapper;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aget v3, v3, v11

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aget v4, v4, v12

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aget v5, v5, v11

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aget v6, v6, v12

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v0 .. v9}, Lcom/adobe/reader/PageView$CanvasWrapper;->paintSurface(Lcom/adobe/reader/JSurface;IIIIIIII)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    iget v1, v10, Landroid/graphics/Rect;->left:I

    iget v2, v10, Landroid/graphics/Rect;->top:I

    iget v3, v10, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0, v11, v11}, Lcom/adobe/reader/PageView;->paintEmptyPages(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    move v0, v12

    :goto_3
    iget-object v1, p0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    iget v2, v10, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0, v11, v11}, Lcom/adobe/reader/PageView;->paintEmptyPages(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    move v0, v12

    :cond_9
    iget-object v1, p0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, v10, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0, v11, v11}, Lcom/adobe/reader/PageView;->paintEmptyPages(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    move v0, v12

    :cond_a
    iget-object v1, p0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    iget v2, v10, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v10, Landroid/graphics/Rect;->right:I

    iget v5, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mCommonRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPaintRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0, v11, v11}, Lcom/adobe/reader/PageView;->paintEmptyPages(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    move v0, v12

    goto/16 :goto_2

    :cond_b
    invoke-direct {p0, p1, v10, v11, v11}, Lcom/adobe/reader/PageView;->paintEmptyPages(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    move v0, v12

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mIsScrolling:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_1

    :cond_d
    move v0, v11

    goto/16 :goto_3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v3, 0xa

    const/16 v1, -0xa

    const/4 v2, 0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/adobe/reader/PageView;->gotoNextPage(Z)V

    move v0, v2

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/adobe/reader/PageView;->gotoPrevPage(Z)V

    move v0, v2

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/adobe/reader/PageView;->zoomIn(Z)V

    move v0, v2

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v0}, Lcom/adobe/reader/PageView;->zoomOut(Z)V

    move v0, v2

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, v1, v0}, Lcom/adobe/reader/PageView;->handleScroll(II)Z

    move v0, v2

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, v3, v0}, Lcom/adobe/reader/PageView;->handleScroll(II)Z

    move v0, v2

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0, v0, v1}, Lcom/adobe/reader/PageView;->handleScroll(II)Z

    move v0, v2

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0, v0, v3}, Lcom/adobe/reader/PageView;->handleScroll(II)Z

    move v0, v2

    goto :goto_0

    :sswitch_8
    sget-boolean v0, Lcom/adobe/reader/AdobeReader;->sIsFindActivated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    iget v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->activateFind()V

    :cond_0
    move v0, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_6
        0x14 -> :sswitch_7
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x25 -> :sswitch_2
        0x2a -> :sswitch_0
        0x2b -> :sswitch_3
        0x2c -> :sswitch_1
        0x54 -> :sswitch_8
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getActivityPausedState()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/adobe/reader/AdobeReader;->setOnSizeChangedParams(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->isSearchInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/adobe/reader/AdobeReader;->setOnSizeChangedParams(IIII)V

    goto :goto_0

    :cond_2
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/reader/PageView;->mOffscreenPixels:[I

    iput p2, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    iput p1, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    const/4 v1, 0x3

    iget v2, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    iput v1, p0, Lcom/adobe/reader/PageView;->mOffscreenHeight:I

    iget v1, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    iput v1, p0, Lcom/adobe/reader/PageView;->mOffscreenWidth:I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    :goto_1
    iget-wide v1, p0, Lcom/adobe/reader/PageView;->mARWin:J

    sget-boolean v3, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/adobe/reader/PageView;->setTiledMode(JZ)V

    const-wide/16 v1, 0x0

    iget-wide v3, p0, Lcom/adobe/reader/PageView;->mARWin:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/adobe/reader/AdobeReader;

    iget v1, p0, Lcom/adobe/reader/PageView;->mDPI:F

    iget v2, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    iget v3, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    iget v4, p0, Lcom/adobe/reader/PageView;->mOffscreenWidth:I

    iget v5, p0, Lcom/adobe/reader/PageView;->mOffscreenHeight:I

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->isRunningOnTablet()Z

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/adobe/reader/PageView;->createARWindow(FIIIIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mARWin:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    iput v1, p0, Lcom/adobe/reader/PageView;->mOffscreenHeight:I

    iget v1, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    iput v1, p0, Lcom/adobe/reader/PageView;->mOffscreenWidth:I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mDocPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->openDocument()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/reader/PageView;->mDidOrientationChange:Z

    goto :goto_0

    :cond_5
    iget-wide v1, p0, Lcom/adobe/reader/PageView;->mARWin:J

    iget v5, p0, Lcom/adobe/reader/PageView;->mOffscreenWidth:I

    iget v6, p0, Lcom/adobe/reader/PageView;->mOffscreenHeight:I

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/adobe/reader/PageView;->setWindowSize(JIIII)V

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mIsPortfolioDoc:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mIsPasswdDialogNotShown:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/adobe/reader/AdobeReader;->HasPendingError()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mDocOpened:Z

    if-nez v0, :cond_7

    :cond_6
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/reader/PageView;->sendWindowSizeChangedMessage(Z)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/adobe/reader/PageView;->mCurrentOrientation:I

    iget-boolean v2, p0, Lcom/adobe/reader/PageView;->mDidOrientationChange:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/adobe/reader/PageView;->mIsPasswdDialogNotShown:Z

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/adobe/reader/PageView;->mPrevOrientation:I

    iget v3, p0, Lcom/adobe/reader/PageView;->mCurrentOrientation:I

    if-ge v2, v3, :cond_8

    const v2, 0x7f040002

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_2
    sget-boolean v2, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mIsZoomPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/adobe/reader/PageView;->sendWindowSizeChangedMessage(Z)V

    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lcom/adobe/reader/PageView;->mIsZoomPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x3

    if-ge v2, v3, :cond_9

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_8
    const v2, 0x7f040001

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/adobe/reader/PageView;->scrollTo(II)V

    invoke-virtual {p0, v0}, Lcom/adobe/reader/PageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_4
    iput v1, p0, Lcom/adobe/reader/PageView;->mCurrentOrientation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/reader/PageView;->mDidOrientationChange:Z

    goto/16 :goto_0

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/adobe/reader/PageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/reader/PageView;->mIsRunningOrientationChangeAnim:Z

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/reader/PageView;->sendWindowSizeChangedMessage(Z)V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v4, 0x0

    const v11, 0x3f8ccccd    # 1.1f

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v10, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    if-nez v0, :cond_0

    move v0, v10

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_1
    :sswitch_0
    move v0, v10

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP1Begin:Landroid/graphics/Point;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP1Init:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP1Begin:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP1Begin:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP1Prev:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP1Begin:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP1Begin:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v10, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x3

    iget v3, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mLastFlingGestureInReflowTime:J

    sub-long v2, v0, v2

    const-wide/16 v6, 0x3e8

    cmp-long v2, v2, v6

    if-gez v2, :cond_3

    move v0, v5

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/adobe/reader/PageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    iput-wide v0, p0, Lcom/adobe/reader/PageView;->mLastPinchGestureTime:J

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0, v10, v5}, Lcom/adobe/reader/AdobeReader;->hideUIElems(ZZ)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v5}, Lcom/adobe/reader/PageView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v5}, Lcom/adobe/reader/PageView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v0, v1, :cond_4

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_8

    :cond_4
    const/16 v0, 0x32

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP1Prev:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v0, v1, :cond_5

    const/16 v0, 0x32

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP1Prev:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v0, v1, :cond_5

    const/16 v0, 0x32

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP2Prev:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v0, v1, :cond_5

    const/16 v0, 0x32

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP2Prev:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_8

    :cond_5
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP1Prev:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP2Prev:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    move v0, v10

    move v6, v4

    move v9, v4

    :goto_2
    if-nez v0, :cond_1

    cmpl-float v0, v6, v4

    if-lez v0, :cond_9

    iput-boolean v5, p0, Lcom/adobe/reader/PageView;->mIsShrink:Z

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mPinchIsPurgePerfomed:Z

    if-nez v0, :cond_16

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mMaxZoomLevel:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_16

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollY()I

    move-result v2

    iget v3, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    iget v4, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/reader/JSurface;->purgeOffscreenTiles(IIIIZ)V

    iput-boolean v10, p0, Lcom/adobe/reader/PageView;->mPinchIsPurgePerfomed:Z

    move v0, v10

    :goto_3
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/adobe/reader/PageView;->mDistanceBeforePinch:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    new-instance v4, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mP1Begin:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/adobe/reader/PageView;->mP2Begin:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    iget-object v6, p0, Lcom/adobe/reader/PageView;->mP1Begin:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/adobe/reader/PageView;->mP2Begin:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v4, v3, v6}, Landroid/graphics/Point;-><init>(II)V

    packed-switch v0, :pswitch_data_0

    :cond_6
    :pswitch_0
    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_7

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v10}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a000b

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/adobe/reader/PageView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    check-cast v0, Landroid/view/ViewGroup;

    const v1, -0x3f3f40

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_7
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP1Init:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP2Init:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP1Prev:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP2Prev:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iput v9, p0, Lcom/adobe/reader/PageView;->mDistanceBeforePinch:F

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP1Init:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mP1Prev:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP1Init:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mP1Prev:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP2Init:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mP2Prev:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP2Init:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mP2Prev:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/adobe/reader/PageView;->mDistanceBeforePinch:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_17

    move v6, v1

    move v9, v0

    move v0, v10

    goto/16 :goto_2

    :cond_9
    cmpg-float v0, v6, v4

    if-gez v0, :cond_15

    const/4 v7, -0x1

    iput-boolean v10, p0, Lcom/adobe/reader/PageView;->mIsShrink:Z

    iget-boolean v0, p0, Lcom/adobe/reader/PageView;->mPinchIsPurgePerfomed:Z

    if-nez v0, :cond_a

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mMinZoomLevel:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_a

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollY()I

    move-result v2

    iget v3, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    iget v4, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/reader/JSurface;->purgeOffscreenTiles(IIIIZ)V

    iput-boolean v10, p0, Lcom/adobe/reader/PageView;->mPinchIsPurgePerfomed:Z

    :cond_a
    move v0, v7

    goto/16 :goto_3

    :pswitch_1
    iget v0, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    iget v3, p0, Lcom/adobe/reader/PageView;->mMaxZoomLevelOnScreen:F

    mul-float/2addr v3, v11

    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    iget v0, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/adobe/reader/PageView;->mMaxZoomLevelOnScreen:F

    mul-float/2addr v1, v11

    cmpl-float v1, v0, v1

    if-lez v1, :cond_14

    iget v0, p0, Lcom/adobe/reader/PageView;->mMaxZoomLevelOnScreen:F

    mul-float/2addr v0, v11

    move v2, v0

    :goto_5
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    iget v3, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v8, v4

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput v2, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    goto/16 :goto_4

    :pswitch_2
    iget v0, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    iget v3, p0, Lcom/adobe/reader/PageView;->mMinZoomLevelOnScreen:F

    div-float/2addr v3, v11

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    iget v0, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    const/high16 v2, 0x3fa00000    # 1.25f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/adobe/reader/PageView;->mMinZoomLevelOnScreen:F

    div-float/2addr v1, v11

    cmpg-float v1, v0, v1

    if-gez v1, :cond_13

    iget v0, p0, Lcom/adobe/reader/PageView;->mMinZoomLevelOnScreen:F

    div-float/2addr v0, v11

    move v2, v0

    :goto_6
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    iget v3, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v8, v4

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput v2, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    goto/16 :goto_4

    :sswitch_3
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP1Begin:Landroid/graphics/Point;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP1Init:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP1Begin:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP1Begin:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP1Prev:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP1Begin:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP1Begin:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP2Init:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP1Init:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP2Init:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mP1Init:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/adobe/reader/PageView;->mDistanceBeforePinch:F

    goto/16 :goto_1

    :sswitch_4
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP2Begin:Landroid/graphics/Point;

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP2Init:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP2Begin:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP2Begin:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP2Prev:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP2Begin:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP2Begin:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP2Init:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP1Init:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP2Init:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mP1Init:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/adobe/reader/PageView;->mDistanceBeforePinch:F

    iput-boolean v5, p0, Lcom/adobe/reader/PageView;->mPinchIsPurgePerfomed:Z

    goto/16 :goto_1

    :sswitch_5
    const/4 v0, 0x3

    iget v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP2Cur:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mP1Cur:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/adobe/reader/PageView;->mDistanceBeforePinch:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_d

    sget-boolean v0, Lcom/adobe/reader/PageView;->mCanPerformZoomInAgain:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0, v5}, Lcom/adobe/reader/PageView;->zoomIn(Z)V

    :goto_7
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    move v3, v1

    move v5, v10

    move v7, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_b

    check-cast v1, Landroid/view/ViewGroup;

    const v2, -0x3f3f40

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_b
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v10}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a000b

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/adobe/reader/PageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    :cond_c
    move v1, v11

    goto :goto_7

    :cond_d
    sget-boolean v0, Lcom/adobe/reader/PageView;->mCanPerformZoomOutAgain:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0, v5}, Lcom/adobe/reader/PageView;->zoomOut(Z)V

    goto :goto_7

    :cond_e
    const v0, 0x3f666666    # 0.9f

    move v1, v0

    goto :goto_7

    :cond_f
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPivotPoint:Landroid/graphics/Point;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/reader/PageView;->mPivotPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mP1Begin:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mP2Begin:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mP1Begin:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/adobe/reader/PageView;->mP2Begin:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iget v1, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_11

    iget v1, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    iget v2, p0, Lcom/adobe/reader/PageView;->mMaxZoomLevelOnScreen:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_10

    iget-object v9, p0, Lcom/adobe/reader/PageView;->mPivotPoint:Landroid/graphics/Point;

    monitor-enter v9

    :try_start_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    iget v2, p0, Lcom/adobe/reader/PageView;->mMaxZoomLevelOnScreen:F

    iget v3, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    iget v4, p0, Lcom/adobe/reader/PageView;->mMaxZoomLevelOnScreen:F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/adobe/reader/PageView;->mPivotPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/adobe/reader/PageView;->mPivotPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget v1, p0, Lcom/adobe/reader/PageView;->mMaxZoomLevelOnScreen:F

    iput v1, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    :cond_10
    :goto_8
    if-eqz v0, :cond_12

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v10}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a000b

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/content/Context;I)V

    invoke-virtual {v0, p0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/adobe/reader/PageView;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v10, p0, Lcom/adobe/reader/PageView;->mIsPinchZoomLimitAnimationRunning:Z

    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/reader/PageView;->mLastPinchGestureTime:J

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_11
    iget v1, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    iget v2, p0, Lcom/adobe/reader/PageView;->mMinZoomLevelOnScreen:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    iget-object v9, p0, Lcom/adobe/reader/PageView;->mPivotPoint:Landroid/graphics/Point;

    monitor-enter v9

    :try_start_4
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    iget v2, p0, Lcom/adobe/reader/PageView;->mMinZoomLevelOnScreen:F

    iget v3, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    iget v4, p0, Lcom/adobe/reader/PageView;->mMinZoomLevelOnScreen:F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/adobe/reader/PageView;->mPivotPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/adobe/reader/PageView;->mPivotPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget v1, p0, Lcom/adobe/reader/PageView;->mMinZoomLevelOnScreen:F

    iput v1, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    goto :goto_8

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mIsZoomPerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->sendNativeDocZoomMessage()V

    goto :goto_9

    :cond_13
    move v2, v0

    goto/16 :goto_6

    :cond_14
    move v2, v0

    goto/16 :goto_5

    :cond_15
    move v0, v5

    goto/16 :goto_3

    :cond_16
    move v0, v10

    goto/16 :goto_3

    :cond_17
    move v6, v1

    move v9, v0

    move v0, v5

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_5
        0x105 -> :sswitch_4
        0x106 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/reader/PageView;->handleScroll(II)Z

    const/4 v0, 0x1

    return v0
.end method

.method public openDocument(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0, v2, v1}, Lcom/adobe/reader/AdobeReader;->hideUIElems(ZZ)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mScrollXYPos:[Ljava/util/concurrent/atomic/AtomicInteger;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mScrollXYPos:[Ljava/util/concurrent/atomic/AtomicInteger;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {p0, v1, v1}, Lcom/adobe/reader/PageView;->scrollTo(II)V

    iput-object p1, p0, Lcom/adobe/reader/PageView;->mDocPath:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/adobe/reader/PageView;->mDocOpened:Z

    iput-boolean v1, p0, Lcom/adobe/reader/PageView;->mIsPortfolioDoc:Z

    iput-boolean v1, p0, Lcom/adobe/reader/PageView;->mIsDocViewDrawnOnce:Z

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->clearAllTiles()V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mPrevPageTiles:[Lcom/adobe/reader/Tile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {v0}, Lcom/adobe/reader/JSurface;->releasePrevPageTiles()V

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mNextPageTiles:[Lcom/adobe/reader/Tile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {v0}, Lcom/adobe/reader/JSurface;->releaseNextPageTiles()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->openDocument()V

    :cond_2
    return-void
.end method

.method public openDocumentAndLaunchARPortfolioUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/adobe/reader/PageView;->mPortfolioBrowserDirectory:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adobe/reader/PageView;->openDocument(Ljava/lang/String;)V

    return-void
.end method

.method public openFile(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/reader/PageView;->openFile(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public paintEmptyPageAtMinZoomLevelForSinglePageMode(I)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x2

    iget v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    iget v1, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    iget v4, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const v4, 0xc0c0c0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, p1}, Lcom/adobe/reader/PageView;->getXYGutterAtMinZoomMode(I)[I

    move-result-object v4

    aget v6, v4, v5

    aget v7, v4, v9

    iget v8, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    aget v5, v4, v5

    sub-int v5, v8, v5

    iget v8, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    aget v4, v4, v9

    sub-int v4, v8, v4

    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollY()I

    move-result v2

    iget v3, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    iget v4, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/reader/JSurface;->purgeOffscreenTiles(IIIIZ)V

    iget v0, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    iget v1, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public purgeOffscreenTiles()V
    .locals 6

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollY()I

    move-result v2

    iget v3, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    iget v4, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/reader/JSurface;->purgeOffscreenTiles(IIIIZ)V

    :cond_0
    return-void
.end method

.method public removeTextHighlight()V
    .locals 2

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->removeTextHighlight(J)V

    return-void
.end method

.method public requestCancelSearch(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/adobe/reader/PageView;->mCancelSearchRequested:Z

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/reader/PageView;->setCancelSearch(JZ)V

    return-void
.end method

.method public resetNumPasswdAttempts()V
    .locals 2

    invoke-static {}, Lcom/adobe/reader/AdobeReader;->setIsFirstPasswdAttempt()V

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->resetNumPasswdAttempts(J)V

    return-void
.end method

.method public resetOnScreenZoomLevels()V
    .locals 4

    const/4 v0, 0x3

    iget v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevelOnScreen:F

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mMinZoomLevel:D

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/adobe/reader/PageView;->mMinZoomLevelOnScreen:F

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mMaxZoomLevel:D

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/adobe/reader/PageView;->mMaxZoomLevelOnScreen:F

    :cond_0
    return-void
.end method

.method public resetPasswordRequestedFlag()V
    .locals 2

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->resetPasswordRequestedFlag(J)V

    return-void
.end method

.method public resetTimerHandlerForUIElems()V
    .locals 1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->resetTimerHandlerForUIElems(Z)V

    return-void
.end method

.method public scrollDocument(II)V
    .locals 3

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mScrollXYPos:[Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/reader/PageView;->mScrollXYPos:[Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mScrollXYPos:[Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public scrollToOffscreenPos()V
    .locals 3

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/adobe/reader/PageView;->scrollTo(II)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mZoomLevelChanged:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mZoomLevelChanged:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    return-void
.end method

.method public sendFindMessage(Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/adobe/reader/PageView;->removeUnnecessaryMessages()V

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    if-eqz p2, :cond_1

    const/16 v2, 0x12

    iput v2, v1, Landroid/os/Message;->what:I

    :goto_1
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const/16 v2, 0x11

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_1
.end method

.method public sendGoToPageMessage(I)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/adobe/reader/PageView;->removeUnnecessaryMessages()V

    iget v1, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v5, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/adobe/reader/PageView;->getPageOffset(I)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getScrollX()I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/adobe/reader/PageView;->handleScroll(II)Z

    :cond_2
    const/4 v1, 0x2

    iget v2, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mIsGoToPagePerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x15

    iput v2, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mIsGoToPagePerformed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aget v1, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/adobe/reader/PageView;->scrollTo(II)V

    goto :goto_0
.end method

.method public sendPortfolioFileData([B)V
    .locals 1

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPortfolioOutputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mPortfolioOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mPortfolioOutputStream:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method public sendPrefetchOneTileMessage(IIII)V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/BackgroundThread;

    invoke-virtual {v0}, Lcom/adobe/reader/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/reader/PageView;->mCanPerformPrefetch:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    const-string v3, "PREFETCH_PIVOT_X"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "PREFETCH_PIVOT_Y"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "PREFETCH_LEFT"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "PREFETCH_TOP"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendPurgeOffscreenTilesMessage()V
    .locals 3

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xb

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendRemoveTextHighlightMessage()V
    .locals 3

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/adobe/reader/PageView;->removeUnnecessaryMessages()V

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x13

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setDPI(F)V
    .locals 0

    iput p1, p0, Lcom/adobe/reader/PageView;->mDPI:F

    return-void
.end method

.method public setHighlightPosition(IIIIIZ)V
    .locals 7

    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput p1, p0, Lcom/adobe/reader/PageView;->mHighlightXMin:I

    iput p2, p0, Lcom/adobe/reader/PageView;->mHighlightYMin:I

    iput p3, p0, Lcom/adobe/reader/PageView;->mHighlightXMax:I

    iput p4, p0, Lcom/adobe/reader/PageView;->mHighlightYMax:I

    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v0, v1, :cond_2

    if-nez p6, :cond_2

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mPrevPageTiles:[Lcom/adobe/reader/Tile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget v0, v0, Lcom/adobe/reader/JSurface;->mPageNumForPrevPageTiles:I

    if-ne v0, p5, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {v0}, Lcom/adobe/reader/JSurface;->releasePrevPageTiles()V

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->mNextPageTiles:[Lcom/adobe/reader/Tile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    iget v0, v0, Lcom/adobe/reader/JSurface;->mPageNumForNextPageTiles:I

    if-ne v0, p5, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_surface:Lcom/adobe/reader/JSurface;

    invoke-virtual {v0}, Lcom/adobe/reader/JSurface;->releaseNextPageTiles()V

    :cond_1
    iget v0, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    if-eq v0, p5, :cond_2

    :goto_0
    return-void

    :cond_2
    if-eqz p6, :cond_3

    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    if-eq v0, p5, :cond_3

    iput p5, p0, Lcom/adobe/reader/PageView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->clearAllTiles()V

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->resetAllZoomLevels()V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->postInvalidate()V

    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/adobe/reader/PageView;->mHighlightXMin:I

    iget v2, p0, Lcom/adobe/reader/PageView;->mHighlightYMin:I

    iget v3, p0, Lcom/adobe/reader/PageView;->mHighlightXMax:I

    iget v4, p0, Lcom/adobe/reader/PageView;->mHighlightYMax:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aget v1, v1, v5

    iget-object v2, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aget v3, v3, v5

    iget v4, p0, Lcom/adobe/reader/PageView;->mScreenWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/adobe/reader/PageView;->mOffscreenPos:[I

    aget v4, v4, v6

    iget v5, p0, Lcom/adobe/reader/PageView;->mScreenHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_4
    invoke-virtual {p0, v0, p5}, Lcom/adobe/reader/PageView;->markTilesWithinRectAsDirty(Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method public setIsPasswdDialogNotShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/reader/PageView;->mIsPasswdDialogNotShown:Z

    return-void
.end method

.method public setTouchdownPoint(FF)V
    .locals 3

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP1Begin:Landroid/graphics/Point;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP1Init:Landroid/graphics/Point;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mP1Prev:Landroid/graphics/Point;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public setViewMode(I)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "setViewMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->removeAllMessagesFromBackgroundThread()V

    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_reflowIsTileDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/adobe/reader/PageView;->sendSetViewModeMessage(I)V

    goto :goto_0
.end method

.method public startSendingPortfolioFileData(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/PageView;->mPortfolioOpenFileName:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/reader/PageView;->mPortfolioOpenFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/adobe/reader/PageView;->mPortfolioOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v2, p0, Lcom/adobe/reader/PageView;->mPortfolioOutputStream:Ljava/io/OutputStream;

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v2, p0, Lcom/adobe/reader/PageView;->mPortfolioOutputStream:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method public updateZoomButtonsOnDoubleTapNativeZoom()V
    .locals 2

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0a001f

    invoke-virtual {p0, v1}, Lcom/adobe/reader/AdobeReader;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    sget-boolean v1, Lcom/adobe/reader/PageView;->mCanPerformZoomInAgain:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    sget-boolean v0, Lcom/adobe/reader/PageView;->mCanPerformZoomOutAgain:Z

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public zoom(ZI)V
    .locals 8

    const/4 v7, 0x3

    const-wide v5, 0x3f747ae147ae147bL    # 0.005

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/adobe/reader/PageView;->m_reflowIsTileDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->clearAllTiles()V

    invoke-direct {p0}, Lcom/adobe/reader/PageView;->scrollDocument()V

    if-ne v4, p2, :cond_4

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mMaxZoomLevel:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v5

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adobe/reader/PageView;->mZoomLevelChanged:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->zoomIn(J)Z

    move-result v0

    sput-boolean v0, Lcom/adobe/reader/PageView;->mCanPerformZoomInAgain:Z

    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v7, v0, :cond_2

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mZoomLevelChanged:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_2
    sput-boolean v4, Lcom/adobe/reader/PageView;->mCanPerformZoomOutAgain:Z

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->resetOnScreenZoomLevels()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->getUIThreadId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    sget-object v0, Lcom/adobe/reader/Runnables;->showUIElemsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/adobe/reader/AdobeReader;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne v0, p2, :cond_3

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mCurrentZoomLevel:D

    iget-wide v2, p0, Lcom/adobe/reader/PageView;->mMinZoomLevel:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v5

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mZoomLevelChanged:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-wide v0, p0, Lcom/adobe/reader/PageView;->mARWin:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/reader/PageView;->zoomOut(J)Z

    move-result v0

    sput-boolean v0, Lcom/adobe/reader/PageView;->mCanPerformZoomOutAgain:Z

    iget v0, p0, Lcom/adobe/reader/PageView;->mViewMode:I

    if-ne v7, v0, :cond_5

    iget-object v0, p0, Lcom/adobe/reader/PageView;->mZoomLevelChanged:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_5
    sput-boolean v4, Lcom/adobe/reader/PageView;->mCanPerformZoomInAgain:Z

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->showUIElems()V

    goto :goto_0
.end method

.method public zoomIn(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/adobe/reader/PageView;->sendZoomMessage(ZI)V

    return-void
.end method

.method public zoomOut(Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/adobe/reader/PageView;->sendZoomMessage(ZI)V

    return-void
.end method
