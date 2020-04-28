.class public Lcom/adobe/reader/BackgroundThread;
.super Ljava/lang/Thread;


# static fields
.field public static final CLOSE_DOC_MESSAGE:I = 0x10

.field public static final DELETE_TILES_FROM_DISK:I = 0x8

.field public static final DELETE_TILE_FROM_DISK:I = 0x16

.field public static final DOUBLE_TAP_ZOOM:I = 0x2

.field public static final FETCH_PREV_NEXT_TILES:I = 0x14

.field public static final FIND_NEXT_INSTANCE:I = 0x11

.field public static final FIND_PREV_INSTANCE:I = 0x12

.field public static final GO_TO_PAGE_SINGLE_PAGE_MODE:I = 0x15

.field public static final LOAD_TILE_FROM_DISK:I = 0x7

.field public static final NATIVE_DOC_ZOOM:I = 0x3

.field public static final NEXT_PAGE_MESSAGE:I = 0xd

.field public static final OPEN_DOC_MESSAGE:I = 0xf

.field public static final PAINT_RECT_INTO_TILES:I = 0x17

.field public static final PAINT_RECT_MESSAGE:I = 0x1

.field public static final PREFETCH_ONE_TILE:I = 0xa

.field public static final PREFETCH_TILES:I = 0x9

.field public static final PREV_PAGE_MESSAGE:I = 0xc

.field public static final PURGE_OFFSCREEN_TILES:I = 0xb

.field public static final REMOVE_TEXT_HIGHLIGHTS:I = 0x13

.field public static final SAVE_TILES_TO_DISK:I = 0x6

.field public static final SET_VIEW_MODE_MESSAGE:I = 0xe

.field public static final WINDOW_SIZE_CHANGED:I = 0x5

.field public static final ZOOM_MESSAGE:I = 0x4


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mPageView:Lcom/adobe/reader/PageView;


# direct methods
.method public constructor <init>(Lcom/adobe/reader/PageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/adobe/reader/BackgroundThread;->mPageView:Lcom/adobe/reader/PageView;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread;->mPageView:Lcom/adobe/reader/PageView;

    return-object v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .locals 1

    const-string v0, "BackgroundThread"

    invoke-virtual {p0, v0}, Lcom/adobe/reader/BackgroundThread;->setName(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/adobe/reader/BackgroundThread$1;

    invoke-direct {v0, p0}, Lcom/adobe/reader/BackgroundThread$1;-><init>(Lcom/adobe/reader/BackgroundThread;)V

    iput-object v0, p0, Lcom/adobe/reader/BackgroundThread;->mBackgroundHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
