.class Lcom/magicwach/rdefense/HudEntry;
.super Ljava/lang/Object;
.source "GameHud.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magicwach/rdefense/HudEntry$1;,
        Lcom/magicwach/rdefense/HudEntry$AdderEntry;
    }
.end annotation


# static fields
.field private static final ADDER_HOLD_FRAMES:I = 0xf

.field private static final ADDER_MODE_HOLDING:I = 0x1

.field private static final ADDER_MODE_TICKING:I = 0x2

.field private static final ADDER_SIZE:I = 0x4

.field private static final MAX_ADDER:I = 0x5

.field private static final SKIP_FRAMES:I = 0x1

.field private static final char_map:[C


# instance fields
.field private adder:[Lcom/magicwach/rdefense/HudEntry$AdderEntry;

.field private adder_mode:I

.field private alpha:I

.field private cur_adder:I

.field private fader:Z

.field private img:Landroid/graphics/Bitmap;

.field private last_value:I

.field private prefix:Ljava/lang/String;

.field private skip_frames:I

.field private str:[C

.field private str_offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/magicwach/rdefense/HudEntry;->char_map:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "_prefix"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v3, p0, Lcom/magicwach/rdefense/HudEntry;->last_value:I

    .line 55
    const/4 v1, 0x1

    iput v1, p0, Lcom/magicwach/rdefense/HudEntry;->skip_frames:I

    .line 56
    iput-object p1, p0, Lcom/magicwach/rdefense/HudEntry;->prefix:Ljava/lang/String;

    .line 57
    iput v3, p0, Lcom/magicwach/rdefense/HudEntry;->cur_adder:I

    .line 58
    new-array v1, v4, [Lcom/magicwach/rdefense/HudEntry$AdderEntry;

    iput-object v1, p0, Lcom/magicwach/rdefense/HudEntry;->adder:[Lcom/magicwach/rdefense/HudEntry$AdderEntry;

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 60
    iget-object v1, p0, Lcom/magicwach/rdefense/HudEntry;->adder:[Lcom/magicwach/rdefense/HudEntry$AdderEntry;

    new-instance v2, Lcom/magicwach/rdefense/HudEntry$AdderEntry;

    invoke-direct {v2, p0, v5}, Lcom/magicwach/rdefense/HudEntry$AdderEntry;-><init>(Lcom/magicwach/rdefense/HudEntry;Lcom/magicwach/rdefense/HudEntry$1;)V

    aput-object v2, v1, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/magicwach/rdefense/HudEntry;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    add-int/lit8 v1, v1, 0xa

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/magicwach/rdefense/HudEntry;->str:[C

    .line 63
    invoke-direct {p0}, Lcom/magicwach/rdefense/HudEntry;->fillString()V

    .line 64
    const/16 v1, 0xff

    iput v1, p0, Lcom/magicwach/rdefense/HudEntry;->alpha:I

    .line 65
    iput-boolean v3, p0, Lcom/magicwach/rdefense/HudEntry;->fader:Z

    .line 66
    iput-object v5, p0, Lcom/magicwach/rdefense/HudEntry;->img:Landroid/graphics/Bitmap;

    .line 67
    return-void
.end method

.method private drawShadowChars(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/16 v7, 0xff

    const/4 v1, 0x0

    .line 75
    iget v0, p0, Lcom/magicwach/rdefense/HudEntry;->alpha:I

    invoke-virtual {p2, v0, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 76
    iget-object v1, p0, Lcom/magicwach/rdefense/HudEntry;->str:[C

    iget v2, p0, Lcom/magicwach/rdefense/HudEntry;->str_offset:I

    iget-object v0, p0, Lcom/magicwach/rdefense/HudEntry;->str:[C

    array-length v0, v0

    iget v3, p0, Lcom/magicwach/rdefense/HudEntry;->str_offset:I

    sub-int v3, v0, v3

    add-int/lit8 v0, p3, 0x1

    int-to-float v4, v0

    add-int/lit8 v0, p4, 0x1

    int-to-float v5, v0

    move-object v0, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 77
    iget v0, p0, Lcom/magicwach/rdefense/HudEntry;->alpha:I

    invoke-virtual {p2, v0, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 78
    iget-object v1, p0, Lcom/magicwach/rdefense/HudEntry;->str:[C

    iget v2, p0, Lcom/magicwach/rdefense/HudEntry;->str_offset:I

    iget-object v0, p0, Lcom/magicwach/rdefense/HudEntry;->str:[C

    array-length v0, v0

    iget v3, p0, Lcom/magicwach/rdefense/HudEntry;->str_offset:I

    sub-int v3, v0, v3

    int-to-float v4, p3

    int-to-float v5, p4

    move-object v0, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 79
    return-void
.end method

.method private fillString()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 97
    iget-object v1, p0, Lcom/magicwach/rdefense/HudEntry;->str:[C

    array-length v1, v1

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/magicwach/rdefense/HudEntry;->str_offset:I

    .line 98
    iget v1, p0, Lcom/magicwach/rdefense/HudEntry;->cur_adder:I

    sub-int v0, v1, v4

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/magicwach/rdefense/HudEntry;->adder:[Lcom/magicwach/rdefense/HudEntry$AdderEntry;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/magicwach/rdefense/HudEntry$AdderEntry;->value:I

    iget v2, p0, Lcom/magicwach/rdefense/HudEntry;->str_offset:I

    const/4 v3, 0x4

    invoke-direct {p0, v1, v2, v3}, Lcom/magicwach/rdefense/HudEntry;->makeNumber(III)I

    move-result v1

    iput v1, p0, Lcom/magicwach/rdefense/HudEntry;->str_offset:I

    .line 100
    iget-object v1, p0, Lcom/magicwach/rdefense/HudEntry;->str:[C

    iget v2, p0, Lcom/magicwach/rdefense/HudEntry;->str_offset:I

    sub-int v3, v2, v4

    iput v3, p0, Lcom/magicwach/rdefense/HudEntry;->str_offset:I

    const/16 v3, 0x2b

    aput-char v3, v1, v2

    .line 101
    iget-object v1, p0, Lcom/magicwach/rdefense/HudEntry;->str:[C

    iget v2, p0, Lcom/magicwach/rdefense/HudEntry;->str_offset:I

    sub-int v3, v2, v4

    iput v3, p0, Lcom/magicwach/rdefense/HudEntry;->str_offset:I

    const/16 v3, 0x20

    aput-char v3, v1, v2

    .line 98
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 103
    :cond_0
    iget v1, p0, Lcom/magicwach/rdefense/HudEntry;->last_value:I

    iget v2, p0, Lcom/magicwach/rdefense/HudEntry;->str_offset:I

    const/16 v3, 0xa

    invoke-direct {p0, v1, v2, v3}, Lcom/magicwach/rdefense/HudEntry;->makeNumber(III)I

    move-result v1

    iput v1, p0, Lcom/magicwach/rdefense/HudEntry;->str_offset:I

    .line 104
    iget-object v1, p0, Lcom/magicwach/rdefense/HudEntry;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, v1, v4

    :goto_1
    if-ltz v0, :cond_1

    .line 105
    iget-object v1, p0, Lcom/magicwach/rdefense/HudEntry;->str:[C

    iget v2, p0, Lcom/magicwach/rdefense/HudEntry;->str_offset:I

    sub-int v3, v2, v4

    iput v3, p0, Lcom/magicwach/rdefense/HudEntry;->str_offset:I

    iget-object v3, p0, Lcom/magicwach/rdefense/HudEntry;->prefix:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    .line 104
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 107
    :cond_1
    iget v1, p0, Lcom/magicwach/rdefense/HudEntry;->str_offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/magicwach/rdefense/HudEntry;->str_offset:I

    .line 108
    return-void
.end method

.method private makeNumber(III)I
    .locals 5
    .param p1, "val"    # I
    .param p2, "offset"    # I
    .param p3, "max_size"    # I

    .prologue
    .line 83
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .end local p2    # "offset":I
    .local v2, "offset":I
    :goto_0
    if-ge v1, p3, :cond_3

    .line 84
    rem-int/lit8 v3, p1, 0xa

    int-to-char v0, v3

    .line 85
    .local v0, "c":C
    if-lez v0, :cond_0

    .line 86
    iget-object v3, p0, Lcom/magicwach/rdefense/HudEntry;->str:[C

    add-int/lit8 p2, v2, -0x1

    .restart local p2    # "offset":I
    sget-object v4, Lcom/magicwach/rdefense/HudEntry;->char_map:[C

    .end local v2    # "offset":I
    aget-char v4, v4, v0

    aput-char v4, v3, v2

    .line 92
    :goto_1
    div-int/lit8 p1, p1, 0xa

    .line 83
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .restart local v2    # "offset":I
    goto :goto_0

    .line 87
    .end local p2    # "offset":I
    :cond_0
    if-eqz v1, :cond_1

    const/16 v3, 0xa

    if-lt p1, v3, :cond_2

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/magicwach/rdefense/HudEntry;->str:[C

    add-int/lit8 p2, v2, -0x1

    .restart local p2    # "offset":I
    const/16 v4, 0x30

    aput-char v4, v3, v2

    goto :goto_1

    .end local p2    # "offset":I
    :cond_2
    move p2, v2

    .line 94
    .end local v0    # "c":C
    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    :goto_2
    return p2

    .end local p2    # "offset":I
    .restart local v2    # "offset":I
    :cond_3
    move p2, v2

    .restart local p2    # "offset":I
    goto :goto_2
.end method

.method private nextStep(II)I
    .locals 4
    .param p1, "current"    # I
    .param p2, "target"    # I

    .prologue
    const v3, 0x186a0

    .line 195
    sub-int v0, p2, p1

    .line 196
    .local v0, "diff":I
    const/4 v1, 0x1

    .line 197
    .local v1, "mult":I
    if-nez v0, :cond_0

    move v2, p2

    .line 217
    :goto_0
    return v2

    .line 200
    :cond_0
    if-gez v0, :cond_1

    .line 201
    const/4 v1, -0x1

    .line 202
    neg-int v0, v0

    .line 204
    :cond_1
    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_4

    .line 205
    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    .line 206
    add-int v2, p1, v1

    goto :goto_0

    .line 207
    :cond_2
    const/16 v2, 0x64

    if-ge v0, v2, :cond_3

    .line 208
    mul-int/lit8 v2, v1, 0xa

    add-int/2addr v2, p1

    goto :goto_0

    .line 210
    :cond_3
    mul-int/lit8 v2, v1, 0x64

    add-int/2addr v2, p1

    goto :goto_0

    .line 211
    :cond_4
    if-ge v0, v3, :cond_6

    .line 212
    const/16 v2, 0x2710

    if-ge v0, v2, :cond_5

    .line 213
    mul-int/lit16 v2, v1, 0x3e8

    add-int/2addr v2, p1

    goto :goto_0

    .line 215
    :cond_5
    mul-int/lit16 v2, v1, 0x2710

    add-int/2addr v2, p1

    goto :goto_0

    .line 217
    :cond_6
    mul-int v2, v3, v1

    add-int/2addr v2, p1

    goto :goto_0
.end method

.method private popAdder()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 189
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/magicwach/rdefense/HudEntry;->adder:[Lcom/magicwach/rdefense/HudEntry$AdderEntry;

    sub-int v2, v0, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/magicwach/rdefense/HudEntry;->adder:[Lcom/magicwach/rdefense/HudEntry$AdderEntry;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/magicwach/rdefense/HudEntry$AdderEntry;->value:I

    iput v2, v1, Lcom/magicwach/rdefense/HudEntry$AdderEntry;->value:I

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    iget v1, p0, Lcom/magicwach/rdefense/HudEntry;->cur_adder:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/magicwach/rdefense/HudEntry;->cur_adder:I

    .line 193
    return-void
.end method


# virtual methods
.method public appendAdder(I)V
    .locals 3
    .param p1, "amount"    # I

    .prologue
    const/4 v2, 0x1

    .line 176
    iget v0, p0, Lcom/magicwach/rdefense/HudEntry;->cur_adder:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 177
    iget-object v0, p0, Lcom/magicwach/rdefense/HudEntry;->adder:[Lcom/magicwach/rdefense/HudEntry$AdderEntry;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget v1, v0, Lcom/magicwach/rdefense/HudEntry$AdderEntry;->value:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/magicwach/rdefense/HudEntry$AdderEntry;->value:I

    .line 186
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/magicwach/rdefense/HudEntry;->fillString()V

    .line 187
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/magicwach/rdefense/HudEntry;->adder:[Lcom/magicwach/rdefense/HudEntry$AdderEntry;

    iget v1, p0, Lcom/magicwach/rdefense/HudEntry;->cur_adder:I

    aget-object v0, v0, v1

    iput p1, v0, Lcom/magicwach/rdefense/HudEntry$AdderEntry;->value:I

    .line 180
    iget v0, p0, Lcom/magicwach/rdefense/HudEntry;->cur_adder:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/magicwach/rdefense/HudEntry;->cur_adder:I

    .line 181
    iget v0, p0, Lcom/magicwach/rdefense/HudEntry;->cur_adder:I

    if-ne v0, v2, :cond_0

    .line 182
    iput v2, p0, Lcom/magicwach/rdefense/HudEntry;->adder_mode:I

    .line 183
    const/16 v0, 0xf

    iput v0, p0, Lcom/magicwach/rdefense/HudEntry;->skip_frames:I

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "frames"    # I
    .param p6, "value"    # I

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0xff

    .line 110
    iget v0, p0, Lcom/magicwach/rdefense/HudEntry;->cur_adder:I

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual/range {p0 .. p5}, Lcom/magicwach/rdefense/HudEntry;->drawAdder(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V

    .line 150
    :goto_0
    return-void

    .line 114
    :cond_0
    :goto_1
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_5

    .line 115
    iget-boolean v0, p0, Lcom/magicwach/rdefense/HudEntry;->fader:Z

    if-eqz v0, :cond_3

    .line 116
    iget v0, p0, Lcom/magicwach/rdefense/HudEntry;->last_value:I

    if-eq v0, p6, :cond_2

    .line 117
    iget v0, p0, Lcom/magicwach/rdefense/HudEntry;->alpha:I

    if-lez v0, :cond_1

    .line 118
    iget v0, p0, Lcom/magicwach/rdefense/HudEntry;->alpha:I

    const/16 v1, 0x8

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/magicwach/rdefense/HudEntry;->alpha:I

    .line 119
    iget v0, p0, Lcom/magicwach/rdefense/HudEntry;->alpha:I

    if-gez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/magicwach/rdefense/HudEntry;->alpha:I

    goto :goto_1

    .line 123
    :cond_1
    iput p6, p0, Lcom/magicwach/rdefense/HudEntry;->last_value:I

    .line 124
    invoke-direct {p0}, Lcom/magicwach/rdefense/HudEntry;->fillString()V

    goto :goto_1

    .line 126
    :cond_2
    iget v0, p0, Lcom/magicwach/rdefense/HudEntry;->alpha:I

    if-ge v0, v2, :cond_0

    .line 127
    iget v0, p0, Lcom/magicwach/rdefense/HudEntry;->alpha:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/magicwach/rdefense/HudEntry;->alpha:I

    .line 128
    iget v0, p0, Lcom/magicwach/rdefense/HudEntry;->alpha:I

    if-le v0, v2, :cond_0

    .line 129
    iput v2, p0, Lcom/magicwach/rdefense/HudEntry;->alpha:I

    goto :goto_1

    .line 133
    :cond_3
    iget v0, p0, Lcom/magicwach/rdefense/HudEntry;->skip_frames:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/magicwach/rdefense/HudEntry;->skip_frames:I

    if-gez v0, :cond_0

    .line 134
    iget v0, p0, Lcom/magicwach/rdefense/HudEntry;->last_value:I

    if-eq v0, p6, :cond_4

    .line 135
    iget v0, p0, Lcom/magicwach/rdefense/HudEntry;->last_value:I

    invoke-direct {p0, v0, p6}, Lcom/magicwach/rdefense/HudEntry;->nextStep(II)I

    move-result v0

    iput v0, p0, Lcom/magicwach/rdefense/HudEntry;->last_value:I

    .line 136
    invoke-direct {p0}, Lcom/magicwach/rdefense/HudEntry;->fillString()V

    .line 138
    :cond_4
    iput v3, p0, Lcom/magicwach/rdefense/HudEntry;->skip_frames:I

    goto :goto_1

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/magicwach/rdefense/HudEntry;->img:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 143
    iget-object v0, p0, Lcom/magicwach/rdefense/HudEntry;->img:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/magicwach/rdefense/HudEntry;->img:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, p3, v1

    int-to-float v1, v1

    const/16 v2, 0xc

    sub-int v2, p4, v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 144
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 145
    const/16 v0, 0x11

    sub-int v0, p3, v0

    add-int/lit8 v1, p4, 0x6

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/magicwach/rdefense/HudEntry;->drawShadowChars(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V

    .line 146
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 148
    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/magicwach/rdefense/HudEntry;->drawShadowChars(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V

    goto :goto_0
.end method

.method public drawAdder(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "frames"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    :cond_0
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_2

    .line 153
    iget v0, p0, Lcom/magicwach/rdefense/HudEntry;->skip_frames:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/magicwach/rdefense/HudEntry;->skip_frames:I

    if-gez v0, :cond_0

    .line 154
    iget v0, p0, Lcom/magicwach/rdefense/HudEntry;->adder_mode:I

    if-ne v0, v4, :cond_1

    .line 155
    const/4 v0, 0x2

    iput v0, p0, Lcom/magicwach/rdefense/HudEntry;->adder_mode:I

    .line 157
    :cond_1
    iput v4, p0, Lcom/magicwach/rdefense/HudEntry;->skip_frames:I

    .line 158
    iget v0, p0, Lcom/magicwach/rdefense/HudEntry;->last_value:I

    iget v1, p0, Lcom/magicwach/rdefense/HudEntry;->last_value:I

    iget-object v2, p0, Lcom/magicwach/rdefense/HudEntry;->adder:[Lcom/magicwach/rdefense/HudEntry$AdderEntry;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/magicwach/rdefense/HudEntry$AdderEntry;->value:I

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/magicwach/rdefense/HudEntry;->nextStep(II)I

    move-result v0

    iput v0, p0, Lcom/magicwach/rdefense/HudEntry;->last_value:I

    .line 159
    iget-object v0, p0, Lcom/magicwach/rdefense/HudEntry;->adder:[Lcom/magicwach/rdefense/HudEntry$AdderEntry;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/magicwach/rdefense/HudEntry;->adder:[Lcom/magicwach/rdefense/HudEntry$AdderEntry;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/magicwach/rdefense/HudEntry$AdderEntry;->value:I

    invoke-direct {p0, v1, v3}, Lcom/magicwach/rdefense/HudEntry;->nextStep(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/HudEntry$AdderEntry;->value:I

    .line 160
    invoke-direct {p0}, Lcom/magicwach/rdefense/HudEntry;->fillString()V

    goto :goto_0

    .line 163
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/magicwach/rdefense/HudEntry;->drawShadowChars(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V

    .line 164
    iget-object v0, p0, Lcom/magicwach/rdefense/HudEntry;->adder:[Lcom/magicwach/rdefense/HudEntry$AdderEntry;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/magicwach/rdefense/HudEntry$AdderEntry;->value:I

    if-nez v0, :cond_3

    .line 165
    invoke-direct {p0}, Lcom/magicwach/rdefense/HudEntry;->popAdder()V

    .line 166
    iget v0, p0, Lcom/magicwach/rdefense/HudEntry;->cur_adder:I

    if-nez v0, :cond_4

    .line 167
    iput v4, p0, Lcom/magicwach/rdefense/HudEntry;->skip_frames:I

    .line 172
    :goto_1
    invoke-direct {p0}, Lcom/magicwach/rdefense/HudEntry;->fillString()V

    .line 174
    :cond_3
    return-void

    .line 169
    :cond_4
    const/4 v0, 0x7

    iput v0, p0, Lcom/magicwach/rdefense/HudEntry;->skip_frames:I

    .line 170
    iput v4, p0, Lcom/magicwach/rdefense/HudEntry;->adder_mode:I

    goto :goto_1
.end method

.method public setFader(Z)V
    .locals 0
    .param p1, "_fader"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/magicwach/rdefense/HudEntry;->fader:Z

    .line 70
    return-void
.end method

.method public setPrefixImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "_img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/magicwach/rdefense/HudEntry;->img:Landroid/graphics/Bitmap;

    .line 73
    return-void
.end method
