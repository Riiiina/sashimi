.class public Lcom/chartcross/view/MxCellView;
.super Landroid/view/View;
.source "MxCellView.java"


# static fields
.field public static MX_COLOUR_BACK:I

.field public static MX_COLOUR_BLUE:I

.field public static MX_COLOUR_BLUE_SDIM:I

.field public static MX_COLOUR_BLUE_VDIM:I

.field public static MX_COLOUR_BUTTON1_BACK:I

.field public static MX_COLOUR_BUTTON_BACK:I

.field public static MX_COLOUR_BUTTON_FORE:I

.field public static MX_COLOUR_DARKBLUE:I

.field public static MX_COLOUR_DARKRED:I

.field public static MX_COLOUR_DIAL_DBACK:I

.field public static MX_COLOUR_DIAL_DFORE1:I

.field public static MX_COLOUR_DIAL_DFORE2:I

.field public static MX_COLOUR_DIAL_DSHADOW:I

.field public static MX_COLOUR_DIAL_LBACK:I

.field public static MX_COLOUR_DIAL_LFORE1:I

.field public static MX_COLOUR_DIAL_LFORE2:I

.field public static MX_COLOUR_DIAL_LSHADOW:I

.field public static MX_COLOUR_DISABLED:I

.field public static MX_COLOUR_DISABLED_DARK:I

.field public static MX_COLOUR_DISABLED_LIGHT:I

.field public static MX_COLOUR_FIELD_BACK:I

.field public static MX_COLOUR_FIELD_FORE:I

.field public static MX_COLOUR_FORE:I

.field public static MX_COLOUR_GPSSNR0:I

.field public static MX_COLOUR_GPSSNR1:I

.field public static MX_COLOUR_GPSSNR2:I

.field public static MX_COLOUR_GPSSNR3:I

.field public static MX_COLOUR_GPSSNR4:I

.field public static MX_COLOUR_GPSSNR5:I

.field public static MX_COLOUR_GPS_BAD:I

.field public static MX_COLOUR_GPS_OFF:I

.field public static MX_COLOUR_GPS_ON:I

.field public static MX_COLOUR_GREEN:I

.field public static MX_COLOUR_GREEN_SDIM:I

.field public static MX_COLOUR_GREEN_VDIM:I

.field public static MX_COLOUR_LIST1_BACK:I

.field public static MX_COLOUR_LIST1_FORE:I

.field public static MX_COLOUR_LIST2_BACK:I

.field public static MX_COLOUR_LIST2_FORE:I

.field public static MX_COLOUR_MARKER_BORDER:I

.field public static MX_COLOUR_MARKER_FILL:I

.field public static MX_COLOUR_MIDBLUE:I

.field public static MX_COLOUR_MIDBLUE_SDIM:I

.field public static MX_COLOUR_MIDBLUE_VDIM:I

.field public static MX_COLOUR_NULL:I

.field public static MX_COLOUR_ORANGE:I

.field public static MX_COLOUR_ORANGE_SDIM:I

.field public static MX_COLOUR_ORANGE_VDIM:I

.field public static MX_COLOUR_RED:I

.field public static MX_COLOUR_RED_SDIM:I

.field public static MX_COLOUR_RED_VDIM:I

.field public static MX_COLOUR_SAT_BACK:I

.field public static MX_COLOUR_SAT_FORE:I

.field public static MX_COLOUR_SAT_TEXT:I

.field public static MX_COLOUR_SEA:I

.field public static MX_COLOUR_SEA_DARK:I

.field public static MX_COLOUR_SUN:I

.field public static MX_COLOUR_WORLD_BACK:I

.field public static MX_COLOUR_WORLD_FORE:I

.field public static MX_COLOUR_YELLOW:I

.field public static MX_COLOUR_YELLOW_SDIM:I

.field public static MX_COLOUR_YELLOW_VDIM:I

.field public static mCornerRadius:F

.field private static mDensity:F

.field public static mSegmentAlpha:I


# instance fields
.field protected mButton0:Landroid/graphics/Rect;

.field protected mButton1:Landroid/graphics/Rect;

.field protected mButton10:Landroid/graphics/Rect;

.field protected mButton11:Landroid/graphics/Rect;

.field protected mButton12:Landroid/graphics/Rect;

.field protected mButton13:Landroid/graphics/Rect;

.field protected mButton14:Landroid/graphics/Rect;

.field protected mButton15:Landroid/graphics/Rect;

.field protected mButton2:Landroid/graphics/Rect;

.field protected mButton3:Landroid/graphics/Rect;

.field protected mButton4:Landroid/graphics/Rect;

.field protected mButton5:Landroid/graphics/Rect;

.field protected mButton6:Landroid/graphics/Rect;

.field protected mButton7:Landroid/graphics/Rect;

.field protected mButton8:Landroid/graphics/Rect;

.field protected mButton9:Landroid/graphics/Rect;

.field protected mButtonColorFilter:Landroid/graphics/ColorMatrixColorFilter;

.field protected mButtonHit:I

.field protected mColsL:I

.field protected mColsP:I

.field protected mInnerBorderSize:I

.field protected mIsPortrate:Z

.field protected mOldColorFilter:Landroid/graphics/ColorFilter;

.field protected mOuterBorderSize:I

.field protected mPaint:Landroid/graphics/Paint;

.field protected mRowsL:I

.field protected mRowsP:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x3c

    const/16 v6, 0x30

    const/16 v5, 0xc8

    const/4 v4, 0x0

    const/16 v3, 0xff

    .line 11
    sput v4, Lcom/chartcross/view/MxCellView;->MX_COLOUR_NULL:I

    .line 12
    const/16 v0, 0x78

    const/16 v1, 0x82

    const/16 v2, 0xfe

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BACK:I

    .line 13
    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FORE:I

    .line 14
    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_FORE:I

    .line 15
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_BACK:I

    .line 16
    const/16 v0, 0x96

    const/16 v1, 0x96

    const/16 v2, 0x96

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED_LIGHT:I

    .line 17
    const/16 v0, 0x80

    const/16 v1, 0x80

    const/16 v2, 0x80

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED:I

    .line 18
    const/16 v0, 0x60

    const/16 v1, 0x60

    const/16 v2, 0x60

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED_DARK:I

    .line 20
    const/high16 v0, -0x1000000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BUTTON_FORE:I

    .line 21
    const/16 v0, 0xb4

    const/16 v1, 0xb4

    const/16 v2, 0xb4

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BUTTON_BACK:I

    .line 23
    const/16 v0, 0xb4

    invoke-static {v3, v4, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BUTTON1_BACK:I

    .line 25
    const/16 v0, 0x20

    const/16 v1, 0x10

    invoke-static {v3, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_LIST1_FORE:I

    .line 26
    invoke-static {v3, v3, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_LIST1_BACK:I

    .line 27
    invoke-static {v3, v4, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_LIST2_FORE:I

    .line 28
    const/16 v0, 0xa4

    invoke-static {v3, v0, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_LIST2_BACK:I

    .line 30
    const v0, -0xff0100

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_ON:I

    .line 31
    const/high16 v0, -0x10000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_OFF:I

    .line 32
    const/16 v0, -0x100

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_BAD:I

    .line 34
    const/16 v0, 0xc1

    const/16 v1, 0xc1

    invoke-static {v3, v0, v1, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_BACK:I

    .line 35
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_TEXT:I

    .line 36
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_FORE:I

    .line 38
    const/16 v0, 0xbf

    const/16 v1, 0xfc

    const/16 v2, 0xec

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_WORLD_BACK:I

    .line 39
    const/16 v0, 0xaa

    invoke-static {v3, v4, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_WORLD_FORE:I

    .line 41
    const/16 v0, 0xc0

    const/16 v1, 0xc0

    const/16 v2, 0xc0

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR0:I

    .line 42
    invoke-static {v3, v3, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR1:I

    .line 43
    const/16 v0, 0x80

    invoke-static {v3, v3, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR2:I

    .line 44
    invoke-static {v3, v3, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR3:I

    .line 45
    const/16 v0, 0xd9

    invoke-static {v3, v0, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR4:I

    .line 46
    invoke-static {v3, v4, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR5:I

    .line 48
    const/high16 v0, -0x10000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MARKER_FILL:I

    .line 49
    const/16 v0, -0x100

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MARKER_BORDER:I

    .line 51
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DFORE1:I

    .line 52
    const/high16 v0, -0x1000000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LFORE1:I

    .line 53
    const/16 v0, 0x96

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DFORE2:I

    .line 54
    const v0, -0xffff01

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LFORE2:I

    .line 55
    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DBACK:I

    .line 56
    const/4 v0, -0x1

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LBACK:I

    .line 57
    const/16 v0, 0x18

    invoke-static {v0, v4, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DSHADOW:I

    .line 58
    const/16 v0, 0x18

    invoke-static {v0, v4, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LSHADOW:I

    .line 60
    const/16 v0, 0x98

    invoke-static {v3, v3, v0, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE:I

    .line 61
    const/16 v0, 0x98

    invoke-static {v5, v3, v0, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE_SDIM:I

    .line 62
    const/16 v0, 0x98

    invoke-static {v6, v3, v0, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE_VDIM:I

    .line 63
    invoke-static {v3, v3, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW:I

    .line 64
    invoke-static {v5, v3, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW_SDIM:I

    .line 65
    invoke-static {v6, v3, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW_VDIM:I

    .line 66
    invoke-static {v3, v4, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE:I

    .line 67
    invoke-static {v5, v4, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE_SDIM:I

    .line 68
    invoke-static {v6, v4, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE_VDIM:I

    .line 69
    const/16 v0, 0x7f

    invoke-static {v3, v4, v0, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE:I

    .line 70
    const/16 v0, 0x7f

    invoke-static {v5, v4, v0, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE_SDIM:I

    .line 71
    const/16 v0, 0x7f

    invoke-static {v6, v4, v0, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE_VDIM:I

    .line 72
    const/16 v0, 0x40

    invoke-static {v3, v4, v0, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DARKBLUE:I

    .line 73
    invoke-static {v3, v3, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED:I

    .line 74
    invoke-static {v5, v3, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED_SDIM:I

    .line 75
    invoke-static {v6, v3, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED_VDIM:I

    .line 76
    const/16 v0, 0xc0

    invoke-static {v3, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DARKRED:I

    .line 77
    invoke-static {v3, v4, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN:I

    .line 78
    invoke-static {v5, v4, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN_SDIM:I

    .line 79
    const/16 v0, 0x60

    invoke-static {v0, v4, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN_VDIM:I

    .line 81
    const/16 v0, 0xd2

    invoke-static {v3, v3, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SUN:I

    .line 83
    const/16 v0, 0x45

    const/16 v1, 0x66

    invoke-static {v3, v4, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SEA:I

    .line 84
    const/16 v0, 0x28

    invoke-static {v3, v4, v0, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SEA_DARK:I

    .line 114
    sput v6, Lcom/chartcross/view/MxCellView;->mSegmentAlpha:I

    .line 115
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/chartcross/view/MxCellView;->mDensity:F

    .line 116
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/chartcross/view/MxCellView;->mCornerRadius:F

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton0:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton1:Landroid/graphics/Rect;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton2:Landroid/graphics/Rect;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton3:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton4:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton5:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton6:Landroid/graphics/Rect;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton7:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton8:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton9:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton10:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton11:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton12:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton13:Landroid/graphics/Rect;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton14:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton15:Landroid/graphics/Rect;

    .line 121
    invoke-direct {p0}, Lcom/chartcross/view/MxCellView;->Initialise()V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton0:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton1:Landroid/graphics/Rect;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton2:Landroid/graphics/Rect;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton3:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton4:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton5:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton6:Landroid/graphics/Rect;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton7:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton8:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton9:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton10:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton11:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton12:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton13:Landroid/graphics/Rect;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton14:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton15:Landroid/graphics/Rect;

    .line 127
    invoke-direct {p0}, Lcom/chartcross/view/MxCellView;->Initialise()V

    .line 128
    return-void
.end method

.method public static GetDip(I)I
    .locals 2
    .param p0, "Pixels"    # I

    .prologue
    .line 166
    int-to-float v0, p0

    sget v1, Lcom/chartcross/view/MxCellView;->mDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static GetDipF(F)F
    .locals 2
    .param p0, "Pixels"    # F

    .prologue
    .line 171
    sget v0, Lcom/chartcross/view/MxCellView;->mDensity:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    return v0
.end method

.method private Initialise()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    iput v1, p0, Lcom/chartcross/view/MxCellView;->mRowsL:I

    .line 141
    iput v1, p0, Lcom/chartcross/view/MxCellView;->mColsL:I

    .line 142
    iput v1, p0, Lcom/chartcross/view/MxCellView;->mRowsP:I

    .line 143
    iput v1, p0, Lcom/chartcross/view/MxCellView;->mColsP:I

    .line 144
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v0

    iput v0, p0, Lcom/chartcross/view/MxCellView;->mOuterBorderSize:I

    .line 145
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v0

    iput v0, p0, Lcom/chartcross/view/MxCellView;->mInnerBorderSize:I

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartcross/view/MxCellView;->mIsPortrate:Z

    .line 147
    iput v1, p0, Lcom/chartcross/view/MxCellView;->mButtonHit:I

    .line 149
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mOldColorFilter:Landroid/graphics/ColorFilter;

    .line 151
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 155
    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 151
    iput-object v0, p0, Lcom/chartcross/view/MxCellView;->mButtonColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 157
    return-void

    .line 151
    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static SetColourScheme(I)V
    .locals 8
    .param p0, "ColourScheme"    # I

    .prologue
    const/16 v3, 0x6f

    const/16 v7, 0x30

    const/16 v6, 0xc8

    const/16 v5, 0xff

    const/4 v4, 0x0

    .line 176
    packed-switch p0, :pswitch_data_0

    .line 707
    :goto_0
    return-void

    .line 179
    :pswitch_0
    const/16 v0, 0x18

    sput v0, Lcom/chartcross/view/MxCellView;->mSegmentAlpha:I

    .line 180
    const/16 v0, 0x78

    const/16 v1, 0x82

    const/16 v2, 0xfe

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BACK:I

    .line 181
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FORE:I

    .line 182
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_FORE:I

    .line 183
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_BACK:I

    .line 184
    const/16 v0, 0x80

    const/16 v1, 0x80

    const/16 v2, 0x80

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED:I

    .line 185
    const/16 v0, 0x60

    const/16 v1, 0x60

    const/16 v2, 0x60

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED_DARK:I

    .line 186
    const v0, -0xff0100

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_ON:I

    .line 187
    const/high16 v0, -0x10000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_OFF:I

    .line 188
    const/16 v0, -0x100

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_BAD:I

    .line 189
    const/16 v0, 0xc1

    const/16 v1, 0xc1

    invoke-static {v5, v0, v1, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_BACK:I

    .line 190
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_FORE:I

    .line 191
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_TEXT:I

    .line 192
    const/16 v0, 0xbf

    const/16 v1, 0xfc

    const/16 v2, 0xec

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_WORLD_BACK:I

    .line 193
    const/16 v0, 0xaa

    invoke-static {v5, v4, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_WORLD_FORE:I

    .line 194
    const/16 v0, 0xc0

    const/16 v1, 0xc0

    const/16 v2, 0xc0

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR0:I

    .line 195
    invoke-static {v5, v5, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR1:I

    .line 196
    const/16 v0, 0x80

    invoke-static {v5, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR2:I

    .line 197
    invoke-static {v5, v5, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR3:I

    .line 198
    const/16 v0, 0xd9

    invoke-static {v5, v0, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR4:I

    .line 199
    invoke-static {v5, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR5:I

    .line 200
    const/high16 v0, -0x10000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MARKER_FILL:I

    .line 201
    const/16 v0, -0x100

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MARKER_BORDER:I

    .line 203
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DFORE1:I

    .line 204
    const/high16 v0, -0x1000000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LFORE1:I

    .line 205
    const/16 v0, 0x96

    invoke-static {v0, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DFORE2:I

    .line 206
    const v0, -0xffff01

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LFORE2:I

    .line 207
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DBACK:I

    .line 208
    const/4 v0, -0x1

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LBACK:I

    .line 209
    const/16 v0, 0x18

    invoke-static {v0, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DSHADOW:I

    .line 210
    const/16 v0, 0x18

    invoke-static {v0, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LSHADOW:I

    .line 212
    const/16 v0, 0x98

    const/16 v1, 0x3c

    invoke-static {v5, v5, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE:I

    .line 213
    const/16 v0, 0x98

    const/16 v1, 0x3c

    invoke-static {v6, v5, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE_SDIM:I

    .line 214
    const/16 v0, 0x98

    const/16 v1, 0x3c

    invoke-static {v7, v5, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE_VDIM:I

    .line 215
    invoke-static {v5, v5, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW:I

    .line 216
    invoke-static {v6, v5, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW_SDIM:I

    .line 217
    invoke-static {v7, v5, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW_VDIM:I

    .line 218
    invoke-static {v5, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE:I

    .line 219
    invoke-static {v6, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE_SDIM:I

    .line 220
    invoke-static {v7, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE_VDIM:I

    .line 221
    const/16 v0, 0x7f

    invoke-static {v5, v4, v0, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE:I

    .line 222
    const/16 v0, 0x7f

    invoke-static {v6, v4, v0, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE_SDIM:I

    .line 223
    const/16 v0, 0x7f

    invoke-static {v7, v4, v0, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE_VDIM:I

    .line 224
    const/16 v0, 0x40

    invoke-static {v5, v4, v0, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DARKBLUE:I

    .line 225
    invoke-static {v5, v5, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED:I

    .line 226
    invoke-static {v6, v5, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED_SDIM:I

    .line 227
    invoke-static {v7, v5, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED_VDIM:I

    .line 228
    const/16 v0, 0xc0

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DARKRED:I

    .line 229
    invoke-static {v5, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN:I

    .line 230
    invoke-static {v6, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN_SDIM:I

    .line 231
    const/16 v0, 0x60

    invoke-static {v0, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN_VDIM:I

    .line 233
    const/16 v0, 0xd2

    invoke-static {v5, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SUN:I

    goto/16 :goto_0

    .line 237
    :pswitch_1
    sput v7, Lcom/chartcross/view/MxCellView;->mSegmentAlpha:I

    .line 238
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BACK:I

    .line 239
    const/16 v0, 0xb4

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FORE:I

    .line 240
    const/16 v0, 0xb4

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_FORE:I

    .line 241
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_BACK:I

    .line 242
    const/16 v0, 0x5a

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED_LIGHT:I

    .line 243
    const/16 v0, 0x5a

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED:I

    .line 244
    const/16 v0, 0x2d

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED_DARK:I

    .line 245
    const/16 v0, 0xb4

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_ON:I

    .line 246
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_OFF:I

    .line 247
    const/16 v0, 0x5a

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_BAD:I

    .line 248
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_BACK:I

    .line 249
    const/16 v0, 0xb4

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_FORE:I

    .line 250
    const/16 v0, 0xb4

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_TEXT:I

    .line 251
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_WORLD_BACK:I

    .line 252
    const/16 v0, 0x64

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_WORLD_FORE:I

    .line 253
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR0:I

    .line 254
    const/16 v0, 0x8e

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR1:I

    .line 255
    const/16 v0, 0x80

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR2:I

    .line 256
    const/16 v0, 0x74

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR3:I

    .line 257
    const/16 v0, 0x65

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR4:I

    .line 258
    const/16 v0, 0x5a

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR5:I

    .line 259
    const/16 v0, 0xb4

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MARKER_FILL:I

    .line 260
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MARKER_BORDER:I

    .line 261
    const/high16 v0, -0x1000000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BUTTON_FORE:I

    .line 262
    const/16 v0, 0xb4

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BUTTON_BACK:I

    .line 264
    const/16 v0, 0xb4

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DFORE1:I

    .line 265
    const/high16 v0, -0x1000000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LFORE1:I

    .line 266
    const/16 v0, 0x96

    const/16 v1, 0xb4

    invoke-static {v0, v1, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DFORE2:I

    .line 267
    const/high16 v0, -0x1000000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LFORE2:I

    .line 268
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DBACK:I

    .line 269
    const/high16 v0, -0x10000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LBACK:I

    .line 270
    const/16 v0, 0x18

    const/16 v1, 0xb4

    invoke-static {v0, v1, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DSHADOW:I

    .line 271
    const/16 v0, 0x18

    const/16 v1, 0xb4

    invoke-static {v0, v1, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LSHADOW:I

    .line 273
    const/16 v0, 0xb4

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE:I

    .line 274
    const/16 v0, 0xb4

    invoke-static {v6, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE_SDIM:I

    .line 275
    const/16 v0, 0xb4

    invoke-static {v7, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE_VDIM:I

    .line 276
    const/16 v0, 0xb4

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW:I

    .line 277
    const/16 v0, 0xb4

    invoke-static {v6, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW_SDIM:I

    .line 278
    const/16 v0, 0xb4

    invoke-static {v7, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW_VDIM:I

    .line 279
    const/16 v0, 0xb4

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE:I

    .line 280
    const/16 v0, 0xb4

    invoke-static {v6, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE_SDIM:I

    .line 281
    const/16 v0, 0xb4

    invoke-static {v7, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE_VDIM:I

    .line 282
    const/16 v0, 0x74

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE:I

    .line 283
    const/16 v0, 0x74

    invoke-static {v6, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE_SDIM:I

    .line 284
    const/16 v0, 0x74

    invoke-static {v7, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE_VDIM:I

    .line 285
    const/16 v0, 0x60

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DARKBLUE:I

    .line 286
    const/16 v0, 0xb4

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED:I

    .line 287
    const/16 v0, 0xb4

    invoke-static {v6, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED_SDIM:I

    .line 288
    const/16 v0, 0xb4

    invoke-static {v7, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED_VDIM:I

    .line 289
    const/16 v0, 0x80

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DARKRED:I

    .line 290
    const/16 v0, 0xb4

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN:I

    .line 291
    const/16 v0, 0xb4

    invoke-static {v6, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN_SDIM:I

    .line 292
    const/16 v0, 0x60

    const/16 v1, 0xb4

    invoke-static {v0, v1, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN_VDIM:I

    .line 294
    const/16 v0, 0xb4

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SUN:I

    .line 295
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SEA:I

    .line 296
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SEA_DARK:I

    goto/16 :goto_0

    .line 300
    :pswitch_2
    sput v7, Lcom/chartcross/view/MxCellView;->mSegmentAlpha:I

    .line 301
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BACK:I

    .line 302
    invoke-static {v5, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FORE:I

    .line 303
    invoke-static {v5, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_FORE:I

    .line 304
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_BACK:I

    .line 305
    const/16 v0, 0x80

    invoke-static {v5, v4, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED:I

    .line 306
    const/16 v0, 0x60

    invoke-static {v5, v4, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED_DARK:I

    .line 307
    invoke-static {v5, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_ON:I

    .line 308
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_OFF:I

    .line 309
    const/16 v0, 0x80

    invoke-static {v5, v4, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_BAD:I

    .line 310
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_BACK:I

    .line 311
    invoke-static {v5, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_FORE:I

    .line 312
    invoke-static {v5, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_TEXT:I

    .line 313
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_WORLD_BACK:I

    .line 314
    const/16 v0, 0x80

    invoke-static {v5, v4, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_WORLD_FORE:I

    .line 315
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR0:I

    .line 316
    const/16 v0, 0x4b

    invoke-static {v5, v4, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR1:I

    .line 317
    invoke-static {v5, v4, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR2:I

    .line 318
    const/16 v0, 0x93

    invoke-static {v5, v4, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR3:I

    .line 319
    const/16 v0, 0xb7

    invoke-static {v5, v4, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR4:I

    .line 320
    const/16 v0, 0xdb

    invoke-static {v5, v4, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR5:I

    .line 321
    invoke-static {v5, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MARKER_FILL:I

    .line 322
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MARKER_BORDER:I

    .line 324
    invoke-static {v5, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DFORE1:I

    .line 325
    const/high16 v0, -0x1000000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LFORE1:I

    .line 326
    const/16 v0, 0x96

    invoke-static {v0, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DFORE2:I

    .line 327
    const/high16 v0, -0x1000000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LFORE2:I

    .line 328
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DBACK:I

    .line 329
    const v0, -0xff0100

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LBACK:I

    .line 330
    const/16 v0, 0x18

    invoke-static {v0, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DSHADOW:I

    .line 331
    const/16 v0, 0x18

    invoke-static {v0, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LSHADOW:I

    .line 333
    invoke-static {v5, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE:I

    .line 334
    invoke-static {v6, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE_SDIM:I

    .line 335
    invoke-static {v7, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE_VDIM:I

    .line 336
    invoke-static {v5, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW:I

    .line 337
    invoke-static {v6, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW_SDIM:I

    .line 338
    invoke-static {v7, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW_VDIM:I

    .line 339
    invoke-static {v5, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE:I

    .line 340
    invoke-static {v6, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE_SDIM:I

    .line 341
    invoke-static {v7, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE_VDIM:I

    .line 343
    const/16 v0, 0x93

    invoke-static {v5, v4, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE:I

    .line 344
    const/16 v0, 0x93

    invoke-static {v6, v4, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE_SDIM:I

    .line 345
    const/16 v0, 0x93

    invoke-static {v7, v4, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE_VDIM:I

    .line 346
    const/16 v0, 0x60

    invoke-static {v5, v4, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DARKBLUE:I

    .line 347
    invoke-static {v5, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED:I

    .line 348
    invoke-static {v6, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED_SDIM:I

    .line 349
    invoke-static {v7, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED_VDIM:I

    .line 350
    const/16 v0, 0xc0

    invoke-static {v5, v4, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DARKRED:I

    .line 351
    invoke-static {v5, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN:I

    .line 352
    invoke-static {v6, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN_SDIM:I

    .line 353
    const/16 v0, 0x60

    invoke-static {v0, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN_VDIM:I

    .line 355
    invoke-static {v5, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SUN:I

    goto/16 :goto_0

    .line 359
    :pswitch_3
    sput v7, Lcom/chartcross/view/MxCellView;->mSegmentAlpha:I

    .line 360
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BACK:I

    .line 361
    const/16 v0, 0xd7

    invoke-static {v5, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FORE:I

    .line 362
    const/16 v0, 0xd7

    invoke-static {v5, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_FORE:I

    .line 363
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_BACK:I

    .line 364
    const/16 v0, 0xbf

    const/16 v1, 0xa3

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED:I

    .line 365
    const/16 v0, 0x47

    invoke-static {v5, v3, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED_DARK:I

    .line 366
    const/16 v0, 0xd7

    invoke-static {v5, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_ON:I

    .line 367
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_OFF:I

    .line 368
    const/16 v0, 0xbf

    const/16 v1, 0xa3

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_BAD:I

    .line 369
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_BACK:I

    .line 370
    const/16 v0, 0xd7

    invoke-static {v5, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_FORE:I

    .line 371
    const/16 v0, 0xd7

    invoke-static {v5, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_TEXT:I

    .line 372
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_WORLD_BACK:I

    .line 373
    const/16 v0, 0xbf

    const/16 v1, 0xa3

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_WORLD_FORE:I

    .line 374
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR0:I

    .line 375
    const/16 v0, 0x47

    invoke-static {v5, v3, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR1:I

    .line 376
    const/16 v0, 0x93

    const/16 v1, 0x6b

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR2:I

    .line 377
    const/16 v0, 0xb7

    const/16 v1, 0x8f

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR3:I

    .line 378
    const/16 v0, 0xdb

    const/16 v1, 0xb3

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR4:I

    .line 379
    const/16 v0, 0xd7

    invoke-static {v5, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR5:I

    .line 380
    const/16 v0, 0xd7

    invoke-static {v5, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MARKER_FILL:I

    .line 381
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MARKER_BORDER:I

    .line 383
    const/16 v0, 0xd7

    invoke-static {v5, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DFORE1:I

    .line 384
    const/high16 v0, -0x1000000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LFORE1:I

    .line 385
    const/16 v0, 0x96

    const/16 v1, 0xd7

    invoke-static {v0, v5, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DFORE2:I

    .line 386
    const/high16 v0, -0x1000000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LFORE2:I

    .line 387
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DBACK:I

    .line 388
    const/16 v0, 0xd7

    invoke-static {v5, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LBACK:I

    .line 389
    const/16 v0, 0x18

    const/16 v1, 0xd7

    invoke-static {v0, v5, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DSHADOW:I

    .line 390
    const/16 v0, 0x18

    const/16 v1, 0xd7

    invoke-static {v0, v5, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LSHADOW:I

    .line 392
    const/16 v0, 0xd7

    invoke-static {v5, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE:I

    .line 393
    const/16 v0, 0xd7

    invoke-static {v6, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE_SDIM:I

    .line 394
    const/16 v0, 0xd7

    invoke-static {v7, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE_VDIM:I

    .line 395
    const/16 v0, 0xd7

    invoke-static {v5, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW:I

    .line 396
    const/16 v0, 0xd7

    invoke-static {v6, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW_SDIM:I

    .line 397
    const/16 v0, 0xd7

    invoke-static {v7, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW_VDIM:I

    .line 398
    const/16 v0, 0xd7

    invoke-static {v5, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE:I

    .line 399
    const/16 v0, 0xd7

    invoke-static {v6, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE_SDIM:I

    .line 400
    const/16 v0, 0xd7

    invoke-static {v7, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE_VDIM:I

    .line 401
    const/16 v0, 0xb7

    const/16 v1, 0x8f

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE:I

    .line 402
    const/16 v0, 0xb7

    const/16 v1, 0x8f

    invoke-static {v6, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE_SDIM:I

    .line 403
    const/16 v0, 0xb7

    const/16 v1, 0x8f

    invoke-static {v7, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE_VDIM:I

    .line 404
    const/16 v0, 0x85

    const/16 v1, 0x5d

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DARKBLUE:I

    .line 405
    const/16 v0, 0xd7

    invoke-static {v5, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED:I

    .line 406
    const/16 v0, 0xd7

    invoke-static {v6, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED_SDIM:I

    .line 407
    const/16 v0, 0xd7

    invoke-static {v7, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED_VDIM:I

    .line 408
    const/16 v0, 0xcd

    const/16 v1, 0xa5

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DARKRED:I

    .line 409
    const/16 v0, 0xb7

    const/16 v1, 0x8f

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN:I

    .line 410
    const/16 v0, 0xb7

    const/16 v1, 0x8f

    invoke-static {v6, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN_SDIM:I

    .line 411
    const/16 v0, 0x60

    const/16 v1, 0xb7

    const/16 v2, 0x8f

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN_VDIM:I

    .line 413
    const/16 v0, 0xd7

    invoke-static {v5, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SUN:I

    goto/16 :goto_0

    .line 417
    :pswitch_4
    sput v7, Lcom/chartcross/view/MxCellView;->mSegmentAlpha:I

    .line 418
    const/16 v0, 0x62

    const/16 v1, 0x62

    const/16 v2, 0x62

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BACK:I

    .line 419
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FORE:I

    .line 420
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_FORE:I

    .line 421
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_BACK:I

    .line 422
    const/16 v0, 0x96

    const/16 v1, 0x96

    const/16 v2, 0x96

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED_LIGHT:I

    .line 423
    const/16 v0, 0x80

    const/16 v1, 0x80

    const/16 v2, 0x80

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED:I

    .line 424
    const/16 v0, 0x60

    const/16 v1, 0x60

    const/16 v2, 0x60

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED_DARK:I

    .line 425
    const v0, -0xff0100

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_ON:I

    .line 426
    const/high16 v0, -0x10000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_OFF:I

    .line 427
    const/16 v0, -0x100

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_BAD:I

    .line 428
    const/16 v0, 0x41

    invoke-static {v5, v4, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_BACK:I

    .line 429
    const/16 v0, 0xbf

    const/16 v1, 0xbf

    const/16 v2, 0xbf

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_FORE:I

    .line 430
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_TEXT:I

    .line 431
    const/16 v0, 0x20

    const/16 v1, 0x40

    invoke-static {v5, v4, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_WORLD_BACK:I

    .line 432
    const/16 v0, 0xaa

    invoke-static {v5, v4, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_WORLD_FORE:I

    .line 433
    const/16 v0, 0xc0

    const/16 v1, 0xc0

    const/16 v2, 0xc0

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR0:I

    .line 434
    invoke-static {v5, v5, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR1:I

    .line 435
    const/16 v0, 0x80

    invoke-static {v5, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR2:I

    .line 436
    invoke-static {v5, v5, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR3:I

    .line 437
    const/16 v0, 0xd9

    invoke-static {v5, v0, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR4:I

    .line 438
    invoke-static {v5, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR5:I

    .line 439
    const/high16 v0, -0x10000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MARKER_FILL:I

    .line 440
    const/16 v0, -0x100

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MARKER_BORDER:I

    .line 441
    const/4 v0, -0x1

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BUTTON_FORE:I

    .line 442
    const/16 v0, 0x9e

    const/16 v1, 0xcc

    invoke-static {v5, v4, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BUTTON_BACK:I

    .line 444
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DFORE1:I

    .line 445
    const/high16 v0, -0x1000000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LFORE1:I

    .line 446
    const/16 v0, 0x96

    invoke-static {v0, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DFORE2:I

    .line 447
    const v0, -0xffff01

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LFORE2:I

    .line 448
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DBACK:I

    .line 449
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LBACK:I

    .line 450
    const/16 v0, 0x18

    invoke-static {v0, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DSHADOW:I

    .line 451
    const/16 v0, 0x18

    invoke-static {v0, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LSHADOW:I

    .line 453
    const/16 v0, 0x98

    const/16 v1, 0x3c

    invoke-static {v5, v5, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE:I

    .line 454
    const/16 v0, 0x98

    const/16 v1, 0x3c

    invoke-static {v6, v5, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE_SDIM:I

    .line 455
    const/16 v0, 0x98

    const/16 v1, 0x3c

    invoke-static {v7, v5, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE_VDIM:I

    .line 456
    invoke-static {v5, v5, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW:I

    .line 457
    invoke-static {v6, v5, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW_SDIM:I

    .line 458
    invoke-static {v7, v5, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW_VDIM:I

    .line 459
    invoke-static {v5, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE:I

    .line 460
    invoke-static {v6, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE_SDIM:I

    .line 461
    invoke-static {v7, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE_VDIM:I

    .line 462
    const/16 v0, 0x7f

    invoke-static {v5, v4, v0, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE:I

    .line 463
    const/16 v0, 0x7f

    invoke-static {v6, v4, v0, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE_SDIM:I

    .line 464
    const/16 v0, 0x7f

    invoke-static {v7, v4, v0, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE_VDIM:I

    .line 465
    const/16 v0, 0x40

    invoke-static {v5, v4, v0, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DARKBLUE:I

    .line 466
    invoke-static {v5, v5, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED:I

    .line 467
    invoke-static {v6, v5, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED_SDIM:I

    .line 468
    invoke-static {v7, v5, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED_VDIM:I

    .line 469
    const/16 v0, 0xc0

    invoke-static {v5, v0, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DARKRED:I

    .line 470
    invoke-static {v5, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN:I

    .line 471
    invoke-static {v6, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN_SDIM:I

    .line 472
    const/16 v0, 0x60

    invoke-static {v0, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN_VDIM:I

    .line 474
    const/16 v0, 0xd2

    invoke-static {v5, v5, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SUN:I

    .line 475
    const/16 v0, 0x45

    const/16 v1, 0x66

    invoke-static {v5, v4, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SEA:I

    .line 476
    const/16 v0, 0x28

    const/16 v1, 0x3c

    invoke-static {v5, v4, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SEA_DARK:I

    goto/16 :goto_0

    .line 480
    :pswitch_5
    sput v7, Lcom/chartcross/view/MxCellView;->mSegmentAlpha:I

    .line 481
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BACK:I

    .line 482
    invoke-static {v5, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FORE:I

    .line 483
    invoke-static {v5, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_FORE:I

    .line 484
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_BACK:I

    .line 485
    const/16 v0, 0x80

    invoke-static {v5, v4, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED:I

    .line 486
    const/16 v0, 0x60

    invoke-static {v5, v4, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED_DARK:I

    .line 487
    invoke-static {v5, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_ON:I

    .line 488
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_OFF:I

    .line 489
    const/16 v0, 0x80

    invoke-static {v5, v4, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_BAD:I

    .line 490
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_BACK:I

    .line 491
    invoke-static {v5, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_FORE:I

    .line 492
    invoke-static {v5, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_TEXT:I

    .line 493
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_WORLD_BACK:I

    .line 494
    const/16 v0, 0x80

    invoke-static {v5, v4, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_WORLD_FORE:I

    .line 495
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR0:I

    .line 496
    const/16 v0, 0x4b

    invoke-static {v5, v4, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR1:I

    .line 497
    invoke-static {v5, v4, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR2:I

    .line 498
    const/16 v0, 0x93

    invoke-static {v5, v4, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR3:I

    .line 499
    const/16 v0, 0xb7

    invoke-static {v5, v4, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR4:I

    .line 500
    const/16 v0, 0xdb

    invoke-static {v5, v4, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR5:I

    .line 501
    invoke-static {v5, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MARKER_FILL:I

    .line 502
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MARKER_BORDER:I

    .line 504
    invoke-static {v5, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DFORE1:I

    .line 505
    const/high16 v0, -0x1000000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LFORE1:I

    .line 506
    const/16 v0, 0x96

    invoke-static {v0, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DFORE2:I

    .line 507
    const/high16 v0, -0x1000000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LFORE2:I

    .line 508
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DBACK:I

    .line 509
    invoke-static {v5, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LBACK:I

    .line 510
    const/16 v0, 0x18

    invoke-static {v0, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DSHADOW:I

    .line 511
    const/16 v0, 0x18

    invoke-static {v0, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LSHADOW:I

    .line 513
    invoke-static {v5, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE:I

    .line 514
    invoke-static {v6, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE_SDIM:I

    .line 515
    invoke-static {v7, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE_VDIM:I

    .line 516
    invoke-static {v5, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW:I

    .line 517
    invoke-static {v6, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW_SDIM:I

    .line 518
    invoke-static {v7, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW_VDIM:I

    .line 519
    invoke-static {v5, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE:I

    .line 520
    invoke-static {v6, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE_SDIM:I

    .line 521
    const/16 v0, 0x14

    invoke-static {v7, v0, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE_VDIM:I

    .line 522
    const/16 v0, 0x93

    invoke-static {v5, v4, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE:I

    .line 523
    const/16 v0, 0x93

    invoke-static {v6, v4, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE_SDIM:I

    .line 524
    const/16 v0, 0x93

    invoke-static {v7, v4, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE_VDIM:I

    .line 525
    const/16 v0, 0x61

    invoke-static {v5, v4, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DARKBLUE:I

    .line 526
    invoke-static {v5, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED:I

    .line 527
    invoke-static {v6, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED_SDIM:I

    .line 528
    invoke-static {v7, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED_VDIM:I

    .line 529
    const/16 v0, 0xcd

    invoke-static {v5, v4, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DARKRED:I

    .line 530
    invoke-static {v5, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN:I

    .line 531
    invoke-static {v6, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN_SDIM:I

    .line 532
    const/16 v0, 0x60

    invoke-static {v0, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN_VDIM:I

    .line 534
    invoke-static {v5, v4, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SUN:I

    goto/16 :goto_0

    .line 538
    :pswitch_6
    sput v7, Lcom/chartcross/view/MxCellView;->mSegmentAlpha:I

    .line 539
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BACK:I

    .line 540
    invoke-static {v5, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FORE:I

    .line 541
    invoke-static {v5, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_FORE:I

    .line 542
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_BACK:I

    .line 543
    const/16 v0, 0xab

    const/16 v1, 0x4b

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED:I

    .line 544
    const/16 v0, 0x57

    const/16 v1, 0x27

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED_DARK:I

    .line 545
    invoke-static {v5, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_ON:I

    .line 546
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_OFF:I

    .line 547
    const/16 v0, 0xbf

    const/16 v1, 0x53

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_BAD:I

    .line 548
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_BACK:I

    .line 549
    invoke-static {v5, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_FORE:I

    .line 550
    invoke-static {v5, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_TEXT:I

    .line 551
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_WORLD_BACK:I

    .line 552
    const/16 v0, 0xab

    const/16 v1, 0x4b

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_WORLD_FORE:I

    .line 553
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR0:I

    .line 554
    const/16 v0, 0x57

    const/16 v1, 0x27

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR1:I

    .line 555
    const/16 v0, 0x81

    const/16 v1, 0x39

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR2:I

    .line 556
    const/16 v0, 0xab

    const/16 v1, 0x4b

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR3:I

    .line 557
    const/16 v0, 0xd5

    const/16 v1, 0x5d

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR4:I

    .line 558
    invoke-static {v5, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR5:I

    .line 559
    invoke-static {v5, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MARKER_FILL:I

    .line 560
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MARKER_BORDER:I

    .line 562
    invoke-static {v5, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DFORE1:I

    .line 563
    const/high16 v0, -0x1000000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LFORE1:I

    .line 564
    const/16 v0, 0x96

    invoke-static {v0, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DFORE2:I

    .line 565
    const/high16 v0, -0x1000000

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LFORE2:I

    .line 566
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DBACK:I

    .line 567
    invoke-static {v5, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LBACK:I

    .line 568
    const/16 v0, 0x18

    invoke-static {v0, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DSHADOW:I

    .line 569
    const/16 v0, 0x18

    invoke-static {v0, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LSHADOW:I

    .line 571
    invoke-static {v5, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE:I

    .line 572
    invoke-static {v6, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE_SDIM:I

    .line 573
    invoke-static {v7, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE_VDIM:I

    .line 574
    invoke-static {v5, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW:I

    .line 575
    invoke-static {v6, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW_SDIM:I

    .line 576
    invoke-static {v7, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW_VDIM:I

    .line 577
    invoke-static {v5, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE:I

    .line 578
    invoke-static {v6, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE_SDIM:I

    .line 579
    invoke-static {v7, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE_VDIM:I

    .line 580
    const/16 v0, 0x96

    const/16 v1, 0x42

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE:I

    .line 581
    const/16 v0, 0x96

    const/16 v1, 0x42

    invoke-static {v6, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE_SDIM:I

    .line 582
    const/16 v0, 0x96

    const/16 v1, 0x42

    invoke-static {v7, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE_VDIM:I

    .line 583
    const/16 v0, 0x81

    const/16 v1, 0x39

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DARKBLUE:I

    .line 584
    invoke-static {v5, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED:I

    .line 585
    invoke-static {v6, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED_SDIM:I

    .line 586
    invoke-static {v7, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED_VDIM:I

    .line 587
    const/16 v0, 0xab

    const/16 v1, 0x4b

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DARKRED:I

    .line 588
    const/16 v0, 0x81

    const/16 v1, 0x39

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN:I

    .line 589
    const/16 v0, 0x81

    const/16 v1, 0x39

    invoke-static {v6, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN_SDIM:I

    .line 590
    const/16 v0, 0x60

    const/16 v1, 0x81

    const/16 v2, 0x39

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN_VDIM:I

    .line 592
    invoke-static {v5, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SUN:I

    goto/16 :goto_0

    .line 649
    :pswitch_7
    const/16 v0, 0x18

    sput v0, Lcom/chartcross/view/MxCellView;->mSegmentAlpha:I

    .line 650
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BACK:I

    .line 651
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FORE:I

    .line 652
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_FORE:I

    .line 653
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_BACK:I

    .line 654
    invoke-static {v5, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED:I

    .line 655
    invoke-static {v5, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DISABLED_DARK:I

    .line 656
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_ON:I

    .line 657
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_OFF:I

    .line 658
    const/16 v0, 0x80

    const/16 v1, 0x80

    const/16 v2, 0x80

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPS_BAD:I

    .line 659
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_BACK:I

    .line 660
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_FORE:I

    .line 661
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SAT_TEXT:I

    .line 662
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_WORLD_BACK:I

    .line 663
    const/16 v0, 0x80

    const/16 v1, 0x80

    const/16 v2, 0x80

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_WORLD_FORE:I

    .line 664
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR0:I

    .line 665
    const/16 v0, 0xdb

    const/16 v1, 0xdb

    const/16 v2, 0xdb

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR1:I

    .line 666
    const/16 v0, 0xb7

    const/16 v1, 0xb7

    const/16 v2, 0xb7

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR2:I

    .line 667
    const/16 v0, 0x93

    const/16 v1, 0x93

    const/16 v2, 0x93

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR3:I

    .line 668
    invoke-static {v5, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR4:I

    .line 669
    const/16 v0, 0x4b

    const/16 v1, 0x4b

    const/16 v2, 0x4b

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GPSSNR5:I

    .line 670
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MARKER_FILL:I

    .line 671
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MARKER_BORDER:I

    .line 673
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DFORE1:I

    .line 674
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LFORE1:I

    .line 675
    const/16 v0, 0x96

    const/16 v1, 0x18

    const/16 v2, 0x18

    const/16 v3, 0x18

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DFORE2:I

    .line 676
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LFORE2:I

    .line 677
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DBACK:I

    .line 678
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LBACK:I

    .line 679
    const/16 v0, 0x18

    invoke-static {v0, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_DSHADOW:I

    .line 680
    const/16 v0, 0x18

    invoke-static {v0, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DIAL_LSHADOW:I

    .line 682
    const/16 v0, 0xac

    const/16 v1, 0xac

    const/16 v2, 0xac

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE:I

    .line 683
    const/16 v0, 0xac

    const/16 v1, 0xac

    const/16 v2, 0xac

    invoke-static {v6, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE_SDIM:I

    .line 684
    const/16 v0, 0xac

    const/16 v1, 0xac

    const/16 v2, 0xac

    invoke-static {v7, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_ORANGE_VDIM:I

    .line 685
    const/16 v0, 0xc4

    const/16 v1, 0xc4

    const/16 v2, 0xc4

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW:I

    .line 686
    const/16 v0, 0xc4

    const/16 v1, 0xc4

    const/16 v2, 0xc4

    invoke-static {v6, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW_SDIM:I

    .line 687
    const/16 v0, 0xc4

    const/16 v1, 0xc4

    const/16 v2, 0xc4

    invoke-static {v7, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_YELLOW_VDIM:I

    .line 688
    const/16 v0, 0x1d

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE:I

    .line 689
    const/16 v0, 0x1d

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    invoke-static {v6, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE_SDIM:I

    .line 690
    const/16 v0, 0x1d

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    invoke-static {v7, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_BLUE_VDIM:I

    .line 692
    const/16 v0, 0x67

    const/16 v1, 0x67

    const/16 v2, 0x67

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE:I

    .line 693
    const/16 v0, 0x67

    const/16 v1, 0x67

    const/16 v2, 0x67

    invoke-static {v6, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE_SDIM:I

    .line 694
    const/16 v0, 0x67

    const/16 v1, 0x67

    const/16 v2, 0x67

    invoke-static {v7, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_MIDBLUE_VDIM:I

    .line 695
    const/16 v0, 0x42

    const/16 v1, 0x42

    const/16 v2, 0x42

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DARKBLUE:I

    .line 696
    const/16 v0, 0x4c

    const/16 v1, 0x4c

    const/16 v2, 0x4c

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED:I

    .line 697
    const/16 v0, 0x4c

    const/16 v1, 0x4c

    const/16 v2, 0x4c

    invoke-static {v6, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED_SDIM:I

    .line 698
    const/16 v0, 0x4c

    const/16 v1, 0x4c

    const/16 v2, 0x4c

    invoke-static {v7, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_RED_VDIM:I

    .line 699
    const/16 v0, 0x39

    const/16 v1, 0x39

    const/16 v2, 0x39

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_DARKRED:I

    .line 700
    const/16 v0, 0x95

    const/16 v1, 0x95

    const/16 v2, 0x95

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN:I

    .line 701
    const/16 v0, 0x95

    const/16 v1, 0x95

    const/16 v2, 0x95

    invoke-static {v6, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN_SDIM:I

    .line 702
    const/16 v0, 0x60

    const/16 v1, 0x95

    const/16 v2, 0x95

    const/16 v3, 0x95

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_GREEN_VDIM:I

    .line 704
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_SUN:I

    goto/16 :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static SetDensity(F)V
    .locals 0
    .param p0, "Density"    # F

    .prologue
    .line 161
    sput p0, Lcom/chartcross/view/MxCellView;->mDensity:F

    .line 162
    return-void
.end method


# virtual methods
.method public DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rcScreen"    # Landroid/graphics/Rect;
    .param p3, "Row"    # I
    .param p4, "Col"    # I
    .param p5, "RowSpan"    # I
    .param p6, "ColSpan"    # I

    .prologue
    .line 1326
    const-string v7, ""

    const-string v8, ""

    sget v9, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_FORE:I

    sget v10, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_BACK:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v10}, Lcom/chartcross/view/MxCellView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;Ljava/lang/String;II)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;)Landroid/graphics/Rect;
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rcScreen"    # Landroid/graphics/Rect;
    .param p3, "Row"    # I
    .param p4, "Col"    # I
    .param p5, "RowSpan"    # I
    .param p6, "ColSpan"    # I
    .param p7, "CaptionL"    # Ljava/lang/String;

    .prologue
    .line 1331
    const-string v8, ""

    sget v9, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_FORE:I

    sget v10, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_BACK:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v10}, Lcom/chartcross/view/MxCellView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;Ljava/lang/String;II)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;II)Landroid/graphics/Rect;
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rcScreen"    # Landroid/graphics/Rect;
    .param p3, "Row"    # I
    .param p4, "Col"    # I
    .param p5, "RowSpan"    # I
    .param p6, "ColSpan"    # I
    .param p7, "CaptionL"    # Ljava/lang/String;
    .param p8, "ForeColour"    # I
    .param p9, "BackColour"    # I

    .prologue
    .line 1341
    const-string v8, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/chartcross/view/MxCellView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;Ljava/lang/String;II)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rcScreen"    # Landroid/graphics/Rect;
    .param p3, "Row"    # I
    .param p4, "Col"    # I
    .param p5, "RowSpan"    # I
    .param p6, "ColSpan"    # I
    .param p7, "CaptionL"    # Ljava/lang/String;
    .param p8, "CaptionR"    # Ljava/lang/String;

    .prologue
    .line 1336
    sget v9, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_FORE:I

    sget v10, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_BACK:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/chartcross/view/MxCellView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;Ljava/lang/String;II)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;Ljava/lang/String;II)Landroid/graphics/Rect;
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rcScreen"    # Landroid/graphics/Rect;
    .param p3, "Row"    # I
    .param p4, "Col"    # I
    .param p5, "RowSpan"    # I
    .param p6, "ColSpan"    # I
    .param p7, "CaptionL"    # Ljava/lang/String;
    .param p8, "CaptionR"    # Ljava/lang/String;
    .param p9, "ForeColour"    # I
    .param p10, "BackColour"    # I

    .prologue
    .line 1346
    iget-boolean v5, p0, Lcom/chartcross/view/MxCellView;->mIsPortrate:Z

    if-eqz v5, :cond_1

    .line 1348
    iget v5, p0, Lcom/chartcross/view/MxCellView;->mRowsP:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/chartcross/view/MxCellView;->mColsP:I

    if-nez v5, :cond_3

    .line 1350
    :cond_0
    const/4 v5, 0x0

    .line 1425
    :goto_0
    return-object v5

    .line 1355
    :cond_1
    iget v5, p0, Lcom/chartcross/view/MxCellView;->mRowsL:I

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/chartcross/view/MxCellView;->mColsL:I

    if-nez v5, :cond_3

    .line 1357
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    move-object v5, p0

    move-object v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 1362
    invoke-virtual/range {v5 .. v10}, Lcom/chartcross/view/MxCellView;->GetCellRect(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v11

    .line 1364
    .local v11, "rcCell":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    .line 1366
    .local v12, "rcCellF":Landroid/graphics/RectF;
    iget v5, v11, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iput v5, v12, Landroid/graphics/RectF;->top:F

    .line 1367
    iget v5, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iput v5, v12, Landroid/graphics/RectF;->bottom:F

    .line 1368
    iget v5, v11, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iput v5, v12, Landroid/graphics/RectF;->left:F

    .line 1369
    iget v5, v11, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iput v5, v12, Landroid/graphics/RectF;->right:F

    .line 1371
    iget-object v5, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1372
    sget v5, Lcom/chartcross/view/MxCellView;->MX_COLOUR_NULL:I

    move/from16 v0, p9

    move v1, v5

    if-eq v0, v1, :cond_4

    .line 1374
    iget-object v5, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object v0, v5

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1375
    iget-object v5, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1376
    sget v5, Lcom/chartcross/view/MxCellView;->mCornerRadius:F

    sget v6, Lcom/chartcross/view/MxCellView;->mCornerRadius:F

    iget-object v7, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v12, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1377
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v12, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 1380
    :cond_4
    sget v5, Lcom/chartcross/view/MxCellView;->MX_COLOUR_NULL:I

    move/from16 v0, p10

    move v1, v5

    if-eq v0, v1, :cond_5

    .line 1382
    iget-object v5, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object v0, v5

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1383
    iget-object v5, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1384
    sget v5, Lcom/chartcross/view/MxCellView;->mCornerRadius:F

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    sget v6, Lcom/chartcross/view/MxCellView;->mCornerRadius:F

    const/4 v7, 0x1

    invoke-static {v7}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v12, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1386
    :cond_5
    iget v5, p0, Lcom/chartcross/view/MxCellView;->mInnerBorderSize:I

    iget v6, p0, Lcom/chartcross/view/MxCellView;->mInnerBorderSize:I

    invoke-virtual {v11, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 1393
    if-eqz p7, :cond_6

    .line 1395
    iget-object v5, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object v0, v5

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1396
    iget-object v5, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    const/16 v6, 0xe

    invoke-static {v6}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1397
    iget-object v5, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1398
    iget v5, v11, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v11, Landroid/graphics/Rect;->top:I

    const/16 v7, 0xf

    invoke-static {v7}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move-object/from16 v1, p7

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1407
    :cond_6
    if-eqz p8, :cond_7

    .line 1409
    iget-object v5, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object v0, v5

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1410
    iget-object v5, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    const/16 v6, 0xe

    invoke-static {v6}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1411
    iget-object v5, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1412
    iget v5, v11, Landroid/graphics/Rect;->right:I

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v11, Landroid/graphics/Rect;->top:I

    const/16 v7, 0xf

    invoke-static {v7}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move-object/from16 v1, p8

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1420
    :cond_7
    const-string v5, ""

    move-object/from16 v0, p7

    move-object v1, v5

    if-ne v0, v1, :cond_8

    const-string v5, ""

    move-object/from16 v0, p8

    move-object v1, v5

    if-eq v0, v1, :cond_9

    .line 1422
    :cond_8
    iget v5, v11, Landroid/graphics/Rect;->top:I

    const/16 v6, 0xf

    invoke-static {v6}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v6

    iget v7, p0, Lcom/chartcross/view/MxCellView;->mInnerBorderSize:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Rect;->top:I

    :cond_9
    move-object v5, v11

    .line 1425
    goto/16 :goto_0
.end method

.method public GetCellRect(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;
    .locals 14
    .param p1, "rcGrid"    # Landroid/graphics/Rect;
    .param p2, "Row"    # I
    .param p3, "Col"    # I
    .param p4, "RowSpan"    # I
    .param p5, "ColSpan"    # I

    .prologue
    .line 1430
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 1434
    .local v10, "rcCell":Landroid/graphics/Rect;
    iget v11, p1, Landroid/graphics/Rect;->right:I

    iget v12, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    int-to-double v8, v11

    .line 1435
    .local v8, "GridWidth":D
    iget v11, p1, Landroid/graphics/Rect;->bottom:I

    iget v12, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    int-to-double v6, v11

    .line 1436
    .local v6, "GridHeight":D
    iget-boolean v11, p0, Lcom/chartcross/view/MxCellView;->mIsPortrate:Z

    if-eqz v11, :cond_2

    .line 1438
    iget v11, p0, Lcom/chartcross/view/MxCellView;->mColsP:I

    int-to-double v11, v11

    div-double v4, v8, v11

    .line 1439
    .local v4, "CellWidth":D
    iget v11, p0, Lcom/chartcross/view/MxCellView;->mRowsP:I

    int-to-double v11, v11

    div-double v2, v6, v11

    .line 1447
    .local v2, "CellHeight":D
    :goto_0
    iget v11, p1, Landroid/graphics/Rect;->left:I

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide v12, v0

    mul-double/2addr v12, v4

    double-to-int v12, v12

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 1448
    iget v11, v10, Landroid/graphics/Rect;->left:I

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide v12, v0

    mul-double/2addr v12, v4

    double-to-int v12, v12

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 1449
    iget v11, p1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide v12, v0

    mul-double/2addr v12, v2

    double-to-int v12, v12

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 1450
    iget v11, v10, Landroid/graphics/Rect;->top:I

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v12, v0

    mul-double/2addr v12, v2

    double-to-int v12, v12

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 1456
    iget-boolean v11, p0, Lcom/chartcross/view/MxCellView;->mIsPortrate:Z

    if-eqz v11, :cond_3

    .line 1458
    const/4 v11, 0x1

    sub-int v11, p5, v11

    add-int v11, v11, p3

    iget v12, p0, Lcom/chartcross/view/MxCellView;->mColsP:I

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-ne v11, v12, :cond_0

    iget v11, v10, Landroid/graphics/Rect;->right:I

    iget v12, p1, Landroid/graphics/Rect;->right:I

    if-ge v11, v12, :cond_0

    .line 1460
    iget v11, p1, Landroid/graphics/Rect;->right:I

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 1475
    :cond_0
    :goto_1
    iget-boolean v11, p0, Lcom/chartcross/view/MxCellView;->mIsPortrate:Z

    if-eqz v11, :cond_4

    .line 1477
    const/4 v11, 0x1

    sub-int v11, p4, v11

    add-int v11, v11, p2

    iget v12, p0, Lcom/chartcross/view/MxCellView;->mRowsP:I

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-ne v11, v12, :cond_1

    iget v11, v10, Landroid/graphics/Rect;->bottom:I

    iget v12, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v11, v12, :cond_1

    .line 1479
    iget v11, p1, Landroid/graphics/Rect;->bottom:I

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 1494
    :cond_1
    :goto_2
    iget v11, v10, Landroid/graphics/Rect;->top:I

    iget v12, p0, Lcom/chartcross/view/MxCellView;->mOuterBorderSize:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 1495
    iget v11, v10, Landroid/graphics/Rect;->left:I

    iget v12, p0, Lcom/chartcross/view/MxCellView;->mOuterBorderSize:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 1496
    iget v11, v10, Landroid/graphics/Rect;->bottom:I

    iget v12, p0, Lcom/chartcross/view/MxCellView;->mOuterBorderSize:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 1497
    iget v11, v10, Landroid/graphics/Rect;->right:I

    iget v12, p0, Lcom/chartcross/view/MxCellView;->mOuterBorderSize:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 1499
    return-object v10

    .line 1443
    .end local v2    # "CellHeight":D
    .end local v4    # "CellWidth":D
    :cond_2
    iget v11, p0, Lcom/chartcross/view/MxCellView;->mColsL:I

    int-to-double v11, v11

    div-double v4, v8, v11

    .line 1444
    .restart local v4    # "CellWidth":D
    iget v11, p0, Lcom/chartcross/view/MxCellView;->mRowsL:I

    int-to-double v11, v11

    div-double v2, v6, v11

    .restart local v2    # "CellHeight":D
    goto/16 :goto_0

    .line 1465
    :cond_3
    const/4 v11, 0x1

    sub-int v11, p5, v11

    add-int v11, v11, p3

    iget v12, p0, Lcom/chartcross/view/MxCellView;->mColsL:I

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-ne v11, v12, :cond_0

    iget v11, v10, Landroid/graphics/Rect;->right:I

    iget v12, p1, Landroid/graphics/Rect;->right:I

    if-ge v11, v12, :cond_0

    .line 1467
    iget v11, p1, Landroid/graphics/Rect;->right:I

    iput v11, v10, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1484
    :cond_4
    const/4 v11, 0x1

    sub-int v11, p4, v11

    add-int v11, v11, p2

    iget v12, p0, Lcom/chartcross/view/MxCellView;->mRowsL:I

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-ne v11, v12, :cond_1

    iget v11, v10, Landroid/graphics/Rect;->bottom:I

    iget v12, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v11, v12, :cond_1

    .line 1486
    iget v11, p1, Landroid/graphics/Rect;->bottom:I

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_2
.end method

.method public GetTextHeight(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;IZ)I
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "Text"    # Ljava/lang/String;
    .param p3, "rcBounds"    # Landroid/graphics/Rect;
    .param p4, "MinHeight"    # I
    .param p5, "Bold"    # Z

    .prologue
    .line 923
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 925
    .local v2, "rcText":Landroid/graphics/Rect;
    if-eqz p5, :cond_2

    .line 927
    iget-object v6, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 934
    :goto_0
    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    sub-int v0, v6, v7

    .line 935
    .local v0, "cellInnerHeight":I
    iget v6, p3, Landroid/graphics/Rect;->right:I

    iget v7, p3, Landroid/graphics/Rect;->left:I

    sub-int v1, v6, v7

    .line 936
    .local v1, "cellInnerWidth":I
    move v5, v0

    .line 937
    .local v5, "textHeight":I
    iget-object v6, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 938
    iget-object v6, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, p2, v7, v8, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 940
    int-to-double v6, v1

    iget v8, v2, Landroid/graphics/Rect;->right:I

    iget v9, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    div-double v3, v6, v8

    .line 941
    .local v3, "sizeRatio":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v3, v6

    if-gez v6, :cond_0

    .line 943
    int-to-double v6, v5

    mul-double/2addr v6, v3

    double-to-int v5, v6

    .line 945
    :cond_0
    if-ge v5, p4, :cond_1

    .line 947
    move v5, p4

    .line 949
    :cond_1
    return v5

    .line 931
    .end local v0    # "cellInnerHeight":I
    .end local v1    # "cellInnerWidth":I
    .end local v3    # "sizeRatio":D
    .end local v5    # "textHeight":I
    :cond_2
    iget-object v6, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method protected HitTestButton(II)I
    .locals 1
    .param p1, "XPos"    # I
    .param p2, "YPos"    # I

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton0:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    const/4 v0, 0x0

    .line 1307
    :goto_0
    return v0

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton1:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1253
    const/4 v0, 0x1

    goto :goto_0

    .line 1255
    :cond_1
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton2:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1257
    const/4 v0, 0x2

    goto :goto_0

    .line 1259
    :cond_2
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton3:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1261
    const/4 v0, 0x3

    goto :goto_0

    .line 1263
    :cond_3
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton4:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1265
    const/4 v0, 0x4

    goto :goto_0

    .line 1267
    :cond_4
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton5:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1269
    const/4 v0, 0x5

    goto :goto_0

    .line 1271
    :cond_5
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton6:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1273
    const/4 v0, 0x6

    goto :goto_0

    .line 1275
    :cond_6
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton7:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1277
    const/4 v0, 0x7

    goto :goto_0

    .line 1279
    :cond_7
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton8:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1281
    const/16 v0, 0x8

    goto :goto_0

    .line 1283
    :cond_8
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton9:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1285
    const/16 v0, 0x9

    goto :goto_0

    .line 1287
    :cond_9
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton10:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1289
    const/16 v0, 0xa

    goto :goto_0

    .line 1291
    :cond_a
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton11:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1293
    const/16 v0, 0xb

    goto :goto_0

    .line 1295
    :cond_b
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton12:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1297
    const/16 v0, 0xc

    goto :goto_0

    .line 1299
    :cond_c
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton13:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1301
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 1303
    :cond_d
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton14:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1305
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 1307
    :cond_e
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method protected SetButtonRect(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "Index"    # I
    .param p2, "rcButton"    # Landroid/graphics/Rect;

    .prologue
    .line 1129
    packed-switch p1, :pswitch_data_0

    .line 1243
    :goto_0
    return-void

    .line 1132
    :pswitch_0
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton0:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1133
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton0:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1134
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton0:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1135
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton0:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1139
    :pswitch_1
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton1:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1140
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton1:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1141
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton1:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1142
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton1:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1146
    :pswitch_2
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton2:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1147
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton2:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1148
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton2:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1149
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton2:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1153
    :pswitch_3
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton3:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1154
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton3:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1155
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton3:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1156
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton3:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1160
    :pswitch_4
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton4:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1161
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton4:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1162
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton4:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1163
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton4:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1167
    :pswitch_5
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton5:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1168
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton5:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1169
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton5:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1170
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton5:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 1174
    :pswitch_6
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton6:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1175
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton6:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1176
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton6:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1177
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton6:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 1181
    :pswitch_7
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton7:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1182
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton7:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1183
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton7:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1184
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton7:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 1188
    :pswitch_8
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton8:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1189
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton8:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1190
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton8:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1191
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton8:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 1195
    :pswitch_9
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton9:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1196
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton9:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1197
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton9:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1198
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton9:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 1202
    :pswitch_a
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton10:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1203
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton10:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1204
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton10:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1205
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton10:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 1209
    :pswitch_b
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton11:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1210
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton11:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1211
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton11:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1212
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton11:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 1216
    :pswitch_c
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton12:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1217
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton12:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1218
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton12:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1219
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton12:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 1223
    :pswitch_d
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton13:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1224
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton13:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1225
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton13:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1226
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton13:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 1230
    :pswitch_e
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton14:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1231
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton14:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1232
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton14:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1233
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton14:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 1237
    :pswitch_f
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton15:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1238
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton15:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1239
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton15:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1240
    iget-object v0, p0, Lcom/chartcross/view/MxCellView;->mButton15:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 1129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public SetGrid(IIII)V
    .locals 0
    .param p1, "RowsP"    # I
    .param p2, "ColsP"    # I
    .param p3, "RowsL"    # I
    .param p4, "ColsL"    # I

    .prologue
    .line 132
    iput p3, p0, Lcom/chartcross/view/MxCellView;->mRowsL:I

    .line 133
    iput p4, p0, Lcom/chartcross/view/MxCellView;->mColsL:I

    .line 134
    iput p1, p0, Lcom/chartcross/view/MxCellView;->mRowsP:I

    .line 135
    iput p2, p0, Lcom/chartcross/view/MxCellView;->mColsP:I

    .line 136
    return-void
.end method

.method public TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V
    .locals 5
    .param p1, "Text"    # Ljava/lang/String;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "XPos"    # I
    .param p4, "YPos"    # I
    .param p5, "Alignment"    # I
    .param p6, "TextSize"    # I
    .param p7, "Bold"    # Z

    .prologue
    .line 1070
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1072
    .local v1, "rcText":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1073
    iget-object v2, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    int-to-float v3, p6

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1074
    iget-object v2, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1075
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 1077
    .local v0, "TextHeight":I
    if-eqz p7, :cond_0

    .line 1079
    iget-object v2, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1086
    :goto_0
    packed-switch p5, :pswitch_data_0

    .line 1125
    :goto_1
    return-void

    .line 1083
    :cond_0
    iget-object v2, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 1089
    :pswitch_0
    iget-object v2, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1090
    int-to-float v2, p3

    int-to-float v3, p4

    iget-object v4, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1093
    :pswitch_1
    iget-object v2, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1094
    int-to-float v2, p3

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1097
    :pswitch_2
    iget-object v2, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1098
    int-to-float v2, p3

    add-int v3, p4, v0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1101
    :pswitch_3
    iget-object v2, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1102
    int-to-float v2, p3

    int-to-float v3, p4

    iget-object v4, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1105
    :pswitch_4
    iget-object v2, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1106
    int-to-float v2, p3

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1109
    :pswitch_5
    iget-object v2, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1110
    int-to-float v2, p3

    add-int v3, p4, v0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1113
    :pswitch_6
    iget-object v2, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1114
    int-to-float v2, p3

    int-to-float v3, p4

    iget-object v4, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1117
    :pswitch_7
    iget-object v2, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1118
    int-to-float v2, p3

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 1121
    :pswitch_8
    iget-object v2, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1122
    int-to-float v2, p3

    add-int v3, p4, v0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 1086
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public TextOut(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Rect;IILandroid/graphics/Paint$Align;Z)V
    .locals 9
    .param p1, "Text"    # Ljava/lang/String;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "rcBounds"    # Landroid/graphics/Rect;
    .param p4, "Height"    # I
    .param p5, "TextColour"    # I
    .param p6, "TextAlign"    # Landroid/graphics/Paint$Align;
    .param p7, "Bold"    # Z

    .prologue
    .line 954
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 956
    .local v2, "rcText":Landroid/graphics/Rect;
    if-eqz p7, :cond_0

    .line 958
    iget-object v6, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 965
    :goto_0
    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    sub-int v0, v6, v7

    .line 966
    .local v0, "CellInnerHeight":I
    iget v6, p3, Landroid/graphics/Rect;->right:I

    iget v7, p3, Landroid/graphics/Rect;->left:I

    sub-int v1, v6, v7

    .line 968
    .local v1, "CellInnerWidth":I
    iget-object v6, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    int-to-float v7, p4

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 969
    iget-object v6, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 970
    iget-object v6, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, p1, v7, v8, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 971
    iget-object v6, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 972
    iget-object v6, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 973
    iget-object v6, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 976
    iget v6, p3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v7, v0, 0x2

    add-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 977
    .local v5, "textY":I
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int v3, v6, v7

    .line 978
    .local v3, "textW":I
    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne p6, v6, :cond_1

    .line 980
    iget v6, p3, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int v4, v6, v7

    .line 991
    .local v4, "textX":I
    :goto_1
    int-to-float v6, v4

    int-to-float v7, v5

    iget-object v8, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 992
    return-void

    .line 962
    .end local v0    # "CellInnerHeight":I
    .end local v1    # "CellInnerWidth":I
    .end local v3    # "textW":I
    .end local v4    # "textX":I
    .end local v5    # "textY":I
    :cond_0
    iget-object v6, p0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 982
    .restart local v0    # "CellInnerHeight":I
    .restart local v1    # "CellInnerWidth":I
    .restart local v3    # "textW":I
    .restart local v5    # "textY":I
    :cond_1
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne p6, v6, :cond_2

    .line 984
    iget v6, p3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    div-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int v4, v6, v7

    .restart local v4    # "textX":I
    goto :goto_1

    .line 988
    .end local v4    # "textX":I
    :cond_2
    iget v6, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int v4, v6, v7

    .restart local v4    # "textX":I
    goto :goto_1
.end method

.method public TextOutAutoSize(Ljava/lang/String;IDIZLandroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/graphics/Paint$Align;Z)V
    .locals 29
    .param p1, "Text"    # Ljava/lang/String;
    .param p2, "SmallTextDigits"    # I
    .param p3, "SmallTextSizeRatio"    # D
    .param p5, "FieldSpacing"    # I
    .param p6, "SmallTextBottom"    # Z
    .param p7, "canvas"    # Landroid/graphics/Canvas;
    .param p8, "rcBounds"    # Landroid/graphics/Rect;
    .param p9, "TextColour"    # I
    .param p10, "TextAlign"    # Landroid/graphics/Paint$Align;
    .param p11, "Bold"    # Z

    .prologue
    .line 711
    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    .line 716
    .local v24, "rcText":Landroid/graphics/Rect;
    if-eqz p11, :cond_3

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 726
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    .line 727
    .local v12, "TextLength":I
    const/16 v25, 0x0

    sub-int v26, v12, p2

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 728
    .local v11, "TextL":Ljava/lang/String;
    sub-int v25, v12, p2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 730
    .local v13, "TextR":Ljava/lang/String;
    move-object/from16 v0, p8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move-object/from16 v0, p8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v5, v25, v26

    .line 731
    .local v5, "CellInnerHeight":I
    move-object/from16 v0, p8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move-object/from16 v0, p8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v6, v25, v26

    .line 732
    .local v6, "CellInnerWidth":I
    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide v27, 0x3fee666666666666L    # 0.95

    mul-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move v14, v0

    .line 733
    .local v14, "TextSizeL":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move v0, v14

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const-string v26, "888"

    const/16 v27, 0x0

    const/16 v28, 0x3

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 735
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    div-int/lit8 v25, v25, 0x3

    sub-int v26, v12, p2

    mul-int v18, v25, v26

    .line 736
    .local v18, "TextWidthL":I
    move v0, v14

    int-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v25, v25, p3

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move v15, v0

    .line 737
    .local v15, "TextSizeR":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move v0, v15

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const-string v26, "888"

    const/16 v27, 0x0

    const/16 v28, 0x3

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 739
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    div-int/lit8 v25, v25, 0x3

    mul-int v19, v25, p2

    .line 741
    .local v19, "TextWidthR":I
    move v0, v6

    int-to-double v0, v0

    move-wide/from16 v25, v0

    add-int v27, v18, v19

    add-int v27, v27, p5

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    div-double v7, v25, v27

    .line 742
    .local v7, "SizeRatio":D
    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    cmpg-double v25, v7, v25

    if-gez v25, :cond_0

    .line 744
    move v0, v14

    int-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v25, v25, v7

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move v14, v0

    .line 746
    :cond_0
    const/16 v25, 0xc

    invoke-static/range {v25 .. v25}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v25

    move v0, v14

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    .line 748
    const/16 v25, 0xc

    invoke-static/range {v25 .. v25}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v14

    .line 750
    :cond_1
    move v0, v14

    int-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v25, v25, p3

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move v15, v0

    .line 751
    const/16 v25, 0xc

    invoke-static/range {v25 .. v25}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v25

    move v0, v15

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 753
    const/16 v25, 0xc

    invoke-static/range {v25 .. v25}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v15

    .line 756
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move v0, v14

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const-string v26, "888"

    const/16 v27, 0x0

    const/16 v28, 0x3

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 758
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    div-int/lit8 v25, v25, 0x3

    sub-int v26, v12, p2

    mul-int v16, v25, v26

    .line 759
    .local v16, "TextWidthFixedL":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v25

    move-object v1, v11

    move/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 760
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    .line 761
    .local v21, "TextXOffsetL":I
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v18, v25, v26

    .line 762
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v9, v25, v26

    .line 764
    .local v9, "TextHeightL":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move v0, v15

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const-string v26, "888"

    const/16 v27, 0x0

    const/16 v28, 0x3

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 766
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    div-int/lit8 v25, v25, 0x3

    mul-int v17, v25, p2

    .line 767
    .local v17, "TextWidthFixedR":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v25

    move-object v1, v13

    move/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 768
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    .line 769
    .local v22, "TextXOffsetR":I
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v19, v25, v26

    .line 770
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v10, v25, v26

    .line 772
    .local v10, "TextHeightR":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 777
    sget-object v25, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p10

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 780
    move-object/from16 v0, p8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    .line 781
    .local v20, "TextXL":I
    add-int v25, v20, v18

    add-int v23, v25, p5

    .line 800
    .local v23, "TextXR":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move v0, v14

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 801
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    div-int/lit8 v27, v5, 0x2

    add-int v26, v26, v27

    div-int/lit8 v27, v9, 0x2

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, p7

    move-object v1, v11

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move v0, v15

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 804
    if-eqz p6, :cond_6

    .line 806
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    div-int/lit8 v27, v5, 0x2

    add-int v26, v26, v27

    div-int/lit8 v27, v9, 0x2

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, p7

    move-object v1, v13

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 813
    :goto_2
    return-void

    .line 722
    .end local v5    # "CellInnerHeight":I
    .end local v6    # "CellInnerWidth":I
    .end local v7    # "SizeRatio":D
    .end local v9    # "TextHeightL":I
    .end local v10    # "TextHeightR":I
    .end local v11    # "TextL":Ljava/lang/String;
    .end local v12    # "TextLength":I
    .end local v13    # "TextR":Ljava/lang/String;
    .end local v14    # "TextSizeL":I
    .end local v15    # "TextSizeR":I
    .end local v16    # "TextWidthFixedL":I
    .end local v17    # "TextWidthFixedR":I
    .end local v18    # "TextWidthL":I
    .end local v19    # "TextWidthR":I
    .end local v20    # "TextXL":I
    .end local v21    # "TextXOffsetL":I
    .end local v22    # "TextXOffsetR":I
    .end local v23    # "TextXR":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_0

    .line 783
    .restart local v5    # "CellInnerHeight":I
    .restart local v6    # "CellInnerWidth":I
    .restart local v7    # "SizeRatio":D
    .restart local v9    # "TextHeightL":I
    .restart local v10    # "TextHeightR":I
    .restart local v11    # "TextL":Ljava/lang/String;
    .restart local v12    # "TextLength":I
    .restart local v13    # "TextR":Ljava/lang/String;
    .restart local v14    # "TextSizeL":I
    .restart local v15    # "TextSizeR":I
    .restart local v16    # "TextWidthFixedL":I
    .restart local v17    # "TextWidthFixedR":I
    .restart local v18    # "TextWidthL":I
    .restart local v19    # "TextWidthR":I
    .restart local v21    # "TextXOffsetL":I
    .restart local v22    # "TextXOffsetR":I
    :cond_4
    sget-object v25, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p10

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 786
    move-object/from16 v0, p8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    div-int/lit8 v26, v6, 0x2

    add-int v27, v18, v19

    add-int v27, v27, p5

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    add-int v20, v25, v26

    .line 787
    .restart local v20    # "TextXL":I
    add-int v25, v20, v18

    add-int v23, v25, p5

    .restart local v23    # "TextXR":I
    goto/16 :goto_1

    .line 795
    .end local v20    # "TextXL":I
    .end local v23    # "TextXR":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 796
    move-object/from16 v0, p8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v25, v25, v19

    sub-int v23, v25, v22

    .line 798
    .restart local v23    # "TextXR":I
    move-object/from16 v0, p8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v25, v25, v17

    sub-int v25, v25, v18

    sub-int v25, v25, v21

    sub-int v20, v25, p5

    .restart local v20    # "TextXL":I
    goto/16 :goto_1

    .line 811
    :cond_6
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    div-int/lit8 v27, v5, 0x2

    add-int v26, v26, v27

    div-int/lit8 v27, v9, 0x2

    sub-int v26, v26, v27

    mul-int/lit8 v27, v10, 0x2

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, p7

    move-object v1, v13

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method public TextOutAutoSize(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/graphics/Paint$Align;Z)V
    .locals 18
    .param p1, "Text"    # Ljava/lang/String;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "rcBounds"    # Landroid/graphics/Rect;
    .param p4, "TextColour"    # I
    .param p5, "TextAlign"    # Landroid/graphics/Paint$Align;
    .param p6, "Bold"    # Z

    .prologue
    .line 996
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 1002
    .local v13, "rcText":Landroid/graphics/Rect;
    if-eqz p6, :cond_2

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object v14, v0

    sget-object v15, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1011
    :goto_0
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v14, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v5, v14, v15

    .line 1012
    .local v5, "CellInnerHeight":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v14, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int v6, v14, v15

    .line 1013
    .local v6, "CellInnerWidth":I
    int-to-double v14, v5

    const-wide v16, 0x3fee666666666666L    # 0.95

    mul-double v14, v14, v16

    double-to-int v9, v14

    .line 1014
    .local v9, "TextHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object v14, v0

    int-to-float v15, v9

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    move-object v0, v14

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, v16

    move-object v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1017
    int-to-double v14, v6

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v7, v14, v16

    .line 1018
    .local v7, "SizeRatio":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v7, v14

    if-gez v14, :cond_0

    .line 1020
    int-to-double v14, v9

    mul-double/2addr v14, v7

    double-to-int v9, v14

    .line 1022
    :cond_0
    const/16 v14, 0xc

    invoke-static {v14}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v14

    if-ge v9, v14, :cond_1

    .line 1024
    const/16 v14, 0xc

    invoke-static {v14}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v9

    .line 1027
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object v14, v0

    int-to-float v15, v9

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object v14, v0

    sget-object v15, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    move-object v0, v14

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, v16

    move-object v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object v14, v0

    sget-object v15, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1035
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v14, v0

    div-int/lit8 v15, v5, 0x2

    add-int/2addr v14, v15

    iget v15, v13, Landroid/graphics/Rect;->bottom:I

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    div-int/lit8 v15, v15, 0x2

    add-int v12, v14, v15

    .line 1036
    .local v12, "TextY":I
    iget v14, v13, Landroid/graphics/Rect;->right:I

    iget v15, v13, Landroid/graphics/Rect;->left:I

    sub-int v10, v14, v15

    .line 1037
    .local v10, "TextW":I
    sget-object v14, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p5

    move-object v1, v14

    if-ne v0, v1, :cond_3

    .line 1039
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v14, v0

    iget v15, v13, Landroid/graphics/Rect;->left:I

    sub-int v11, v14, v15

    .line 1051
    .local v11, "TextX":I
    :goto_1
    int-to-float v14, v11

    int-to-float v15, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move v2, v14

    move v3, v15

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1056
    return-void

    .line 1008
    .end local v5    # "CellInnerHeight":I
    .end local v6    # "CellInnerWidth":I
    .end local v7    # "SizeRatio":D
    .end local v9    # "TextHeight":I
    .end local v10    # "TextW":I
    .end local v11    # "TextX":I
    .end local v12    # "TextY":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object v14, v0

    sget-object v15, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_0

    .line 1041
    .restart local v5    # "CellInnerHeight":I
    .restart local v6    # "CellInnerWidth":I
    .restart local v7    # "SizeRatio":D
    .restart local v9    # "TextHeight":I
    .restart local v10    # "TextW":I
    .restart local v12    # "TextY":I
    :cond_3
    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p5

    move-object v1, v14

    if-ne v0, v1, :cond_4

    .line 1043
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v14, v0

    div-int/lit8 v15, v6, 0x2

    add-int/2addr v14, v15

    div-int/lit8 v15, v10, 0x2

    sub-int/2addr v14, v15

    iget v15, v13, Landroid/graphics/Rect;->left:I

    sub-int v11, v14, v15

    .restart local v11    # "TextX":I
    goto :goto_1

    .line 1047
    .end local v11    # "TextX":I
    :cond_4
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v14, v0

    sub-int/2addr v14, v10

    iget v15, v13, Landroid/graphics/Rect;->left:I

    sub-int v11, v14, v15

    .restart local v11    # "TextX":I
    goto :goto_1
.end method

.method public TextOutAutoSize_Old(Ljava/lang/String;IDZLandroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/graphics/Paint$Align;Z)V
    .locals 29
    .param p1, "Text"    # Ljava/lang/String;
    .param p2, "SmallTextLength"    # I
    .param p3, "SmallTextSizeRatio"    # D
    .param p5, "SmallTextBottom"    # Z
    .param p6, "canvas"    # Landroid/graphics/Canvas;
    .param p7, "rcBounds"    # Landroid/graphics/Rect;
    .param p8, "TextColour"    # I
    .param p9, "TextAlign"    # Landroid/graphics/Paint$Align;
    .param p10, "Bold"    # Z

    .prologue
    .line 817
    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    .line 822
    .local v24, "rcText":Landroid/graphics/Rect;
    if-eqz p10, :cond_3

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 831
    :goto_0
    const/16 v25, 0x5

    invoke-static/range {v25 .. v25}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v9

    .line 832
    .local v9, "StringSpacing":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    .line 833
    .local v14, "TextLength":I
    const/16 v25, 0x0

    sub-int v26, v14, p2

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 834
    .local v13, "TextL":Ljava/lang/String;
    sub-int v25, v14, p2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 836
    .local v15, "TextR":Ljava/lang/String;
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v5, v25, v26

    .line 837
    .local v5, "CellInnerHeight":I
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v6, v25, v26

    .line 838
    .local v6, "CellInnerWidth":I
    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide v27, 0x3fee666666666666L    # 0.95

    mul-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v16, v0

    .line 839
    .local v16, "TextSizeL":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v25

    move-object v1, v13

    move/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 841
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v18, v25, v26

    .line 842
    .local v18, "TextWidthL":I
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v25, v25, p3

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v17, v0

    .line 843
    .local v17, "TextSizeR":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v25

    move-object v1, v15

    move/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 845
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v19, v25, v26

    .line 847
    .local v19, "TextWidthR":I
    move v0, v6

    int-to-double v0, v0

    move-wide/from16 v25, v0

    add-int v27, v18, v19

    add-int v27, v27, v9

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    div-double v7, v25, v27

    .line 848
    .local v7, "SizeRatio":D
    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    cmpg-double v25, v7, v25

    if-gez v25, :cond_0

    .line 850
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v25, v25, v7

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v16, v0

    .line 852
    :cond_0
    const/16 v25, 0xc

    invoke-static/range {v25 .. v25}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v25

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    .line 854
    const/16 v25, 0xc

    invoke-static/range {v25 .. v25}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v16

    .line 856
    :cond_1
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v25, v25, p3

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v17, v0

    .line 857
    const/16 v25, 0xc

    invoke-static/range {v25 .. v25}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v25

    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 859
    const/16 v25, 0xc

    invoke-static/range {v25 .. v25}, Lcom/chartcross/view/MxCellView;->GetDip(I)I

    move-result v17

    .line 862
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v25

    move-object v1, v13

    move/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 864
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    .line 865
    .local v21, "TextXOffsetL":I
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v18, v25, v26

    .line 866
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v11, v25, v26

    .line 868
    .local v11, "TextHeightL":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const-string v26, "8"

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 871
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v10, v25, v26

    .line 873
    .local v10, "TextDigitWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v25

    move-object v1, v15

    move/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 874
    const/16 v22, 0x0

    .line 876
    .local v22, "TextXOffsetR":I
    mul-int v19, v10, p2

    .line 877
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v12, v25, v26

    .line 879
    .local v12, "TextHeightR":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 884
    sget-object v25, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p9

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 887
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    .line 888
    .local v20, "TextXL":I
    add-int v25, v20, v18

    add-int v23, v25, v9

    .line 906
    .local v23, "TextXR":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 907
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    div-int/lit8 v27, v5, 0x2

    add-int v26, v26, v27

    div-int/lit8 v27, v11, 0x2

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, p6

    move-object v1, v13

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 910
    if-eqz p5, :cond_6

    .line 912
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    div-int/lit8 v27, v5, 0x2

    add-int v26, v26, v27

    div-int/lit8 v27, v11, 0x2

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, p6

    move-object v1, v15

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 919
    :goto_2
    return-void

    .line 828
    .end local v5    # "CellInnerHeight":I
    .end local v6    # "CellInnerWidth":I
    .end local v7    # "SizeRatio":D
    .end local v9    # "StringSpacing":I
    .end local v10    # "TextDigitWidth":I
    .end local v11    # "TextHeightL":I
    .end local v12    # "TextHeightR":I
    .end local v13    # "TextL":Ljava/lang/String;
    .end local v14    # "TextLength":I
    .end local v15    # "TextR":Ljava/lang/String;
    .end local v16    # "TextSizeL":I
    .end local v17    # "TextSizeR":I
    .end local v18    # "TextWidthL":I
    .end local v19    # "TextWidthR":I
    .end local v20    # "TextXL":I
    .end local v21    # "TextXOffsetL":I
    .end local v22    # "TextXOffsetR":I
    .end local v23    # "TextXR":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_0

    .line 890
    .restart local v5    # "CellInnerHeight":I
    .restart local v6    # "CellInnerWidth":I
    .restart local v7    # "SizeRatio":D
    .restart local v9    # "StringSpacing":I
    .restart local v10    # "TextDigitWidth":I
    .restart local v11    # "TextHeightL":I
    .restart local v12    # "TextHeightR":I
    .restart local v13    # "TextL":Ljava/lang/String;
    .restart local v14    # "TextLength":I
    .restart local v15    # "TextR":Ljava/lang/String;
    .restart local v16    # "TextSizeL":I
    .restart local v17    # "TextSizeR":I
    .restart local v18    # "TextWidthL":I
    .restart local v19    # "TextWidthR":I
    .restart local v21    # "TextXOffsetL":I
    .restart local v22    # "TextXOffsetR":I
    :cond_4
    sget-object v25, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p9

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 893
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    div-int/lit8 v26, v6, 0x2

    add-int v27, v18, v19

    add-int v27, v27, v9

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    add-int v20, v25, v26

    .line 894
    .restart local v20    # "TextXL":I
    add-int v25, v20, v18

    add-int v23, v25, v9

    .restart local v23    # "TextXR":I
    goto/16 :goto_1

    .line 898
    .end local v20    # "TextXL":I
    .end local v23    # "TextXR":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 899
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    .line 900
    .restart local v23    # "TextXR":I
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v20, v25, v19

    .restart local v20    # "TextXL":I
    goto/16 :goto_1

    .line 917
    :cond_6
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    div-int/lit8 v27, v5, 0x2

    add-int v26, v26, v27

    div-int/lit8 v27, v11, 0x2

    sub-int v26, v26, v27

    mul-int/lit8 v27, v12, 0x2

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxCellView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, p6

    move-object v1, v15

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1313
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1314
    invoke-virtual {p0}, Lcom/chartcross/view/MxCellView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/chartcross/view/MxCellView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartcross/view/MxCellView;->mIsPortrate:Z

    .line 1322
    :goto_0
    return-void

    .line 1320
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartcross/view/MxCellView;->mIsPortrate:Z

    goto :goto_0
.end method
