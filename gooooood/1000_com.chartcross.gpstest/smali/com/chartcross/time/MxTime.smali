.class public Lcom/chartcross/time/MxTime;
.super Ljava/lang/Object;
.source "MxTime.java"


# instance fields
.field private mDay:I

.field private mHour:I

.field private mMilliseconds:I

.field private mMinute:I

.field private mMonth:I

.field private mSecond:I

.field private mYear:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/chartcross/time/MxTime;->mYear:I

    .line 18
    iput v0, p0, Lcom/chartcross/time/MxTime;->mMonth:I

    .line 19
    iput v0, p0, Lcom/chartcross/time/MxTime;->mDay:I

    .line 20
    iput v0, p0, Lcom/chartcross/time/MxTime;->mHour:I

    .line 21
    iput v0, p0, Lcom/chartcross/time/MxTime;->mMinute:I

    .line 22
    iput v0, p0, Lcom/chartcross/time/MxTime;->mSecond:I

    .line 23
    iput v0, p0, Lcom/chartcross/time/MxTime;->mMilliseconds:I

    .line 24
    return-void
.end method

.method public constructor <init>(D)V
    .locals 32
    .param p1, "JulianDay"    # D

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    add-double v26, v26, p1

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    .line 52
    .local v24, "z":D
    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    add-double v26, v26, p1

    sub-double v22, v26, v24

    .line 54
    .local v22, "f":D
    const-wide v26, 0x41418a8c80000000L    # 2299161.0

    cmpg-double v26, v24, v26

    if-gez v26, :cond_0

    .line 56
    move-wide/from16 v2, v24

    .line 64
    .local v2, "A":D
    :goto_0
    const-wide v26, 0x4097d00000000000L    # 1524.0

    add-double v4, v2, v26

    .line 65
    .local v4, "B":D
    const-wide v26, 0x405e866666666666L    # 122.1

    sub-double v26, v4, v26

    const-wide v28, 0x4076d40000000000L    # 365.25

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 66
    .local v6, "C":D
    const-wide v26, 0x4076d40000000000L    # 365.25

    mul-double v26, v26, v6

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 67
    .local v8, "D":D
    sub-double v26, v4, v8

    const-wide v28, 0x403e99a027525461L    # 30.6001

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    .line 68
    .local v12, "E":D
    sub-double v26, v4, v8

    const-wide v28, 0x403e99a027525461L    # 30.6001

    mul-double v28, v28, v12

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    sub-double v26, v26, v28

    add-double v10, v26, v22

    .line 70
    .local v10, "Day":D
    move-wide v0, v10

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/time/MxTime;->mDay:I

    .line 71
    const-wide/high16 v26, 0x402c000000000000L    # 14.0

    cmpg-double v26, v12, v26

    if-gez v26, :cond_1

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    sub-double v26, v12, v26

    :goto_1
    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/time/MxTime;->mMonth:I

    .line 72
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/time/MxTime;->mMonth:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_2

    const-wide v26, 0x40b26c0000000000L    # 4716.0

    sub-double v26, v6, v26

    :goto_2
    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/time/MxTime;->mYear:I

    .line 74
    const-wide/high16 v26, 0x4038000000000000L    # 24.0

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    sub-double v28, v10, v28

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    .line 75
    .local v14, "Hour":D
    const-wide v26, 0x4096800000000000L    # 1440.0

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    sub-double v28, v10, v28

    const-wide/high16 v30, 0x4038000000000000L    # 24.0

    div-double v30, v14, v30

    sub-double v28, v28, v30

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    .line 76
    .local v16, "Minute":D
    const-wide v26, 0x40f5180000000000L    # 86400.0

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    sub-double v28, v10, v28

    const-wide/high16 v30, 0x4038000000000000L    # 24.0

    div-double v30, v14, v30

    sub-double v28, v28, v30

    const-wide v30, 0x4096800000000000L    # 1440.0

    div-double v30, v16, v30

    sub-double v28, v28, v30

    mul-double v18, v26, v28

    .line 78
    .local v18, "Second":D
    move-wide v0, v14

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/time/MxTime;->mHour:I

    .line 79
    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/time/MxTime;->mMinute:I

    .line 80
    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/time/MxTime;->mSecond:I

    .line 81
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/time/MxTime;->mMilliseconds:I

    .line 82
    return-void

    .line 60
    .end local v2    # "A":D
    .end local v4    # "B":D
    .end local v6    # "C":D
    .end local v8    # "D":D
    .end local v10    # "Day":D
    .end local v12    # "E":D
    .end local v14    # "Hour":D
    .end local v16    # "Minute":D
    .end local v18    # "Second":D
    :cond_0
    const-wide v26, 0x413c7dd040000000L    # 1867216.25

    sub-double v26, v24, v26

    const-wide v28, 0x40e1d58800000000L    # 36524.25

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    .line 61
    .local v20, "alpha":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    add-double v26, v26, v24

    add-double v26, v26, v20

    const-wide/high16 v28, 0x4010000000000000L    # 4.0

    div-double v28, v20, v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    sub-double v2, v26, v28

    .restart local v2    # "A":D
    goto/16 :goto_0

    .line 71
    .end local v20    # "alpha":D
    .restart local v4    # "B":D
    .restart local v6    # "C":D
    .restart local v8    # "D":D
    .restart local v10    # "Day":D
    .restart local v12    # "E":D
    :cond_1
    const-wide/high16 v26, 0x402a000000000000L    # 13.0

    sub-double v26, v12, v26

    goto/16 :goto_1

    .line 72
    :cond_2
    const-wide v26, 0x40b26b0000000000L    # 4715.0

    sub-double v26, v6, v26

    goto/16 :goto_2
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0
    .param p1, "Year"    # I
    .param p2, "Month"    # I
    .param p3, "Day"    # I
    .param p4, "Hour"    # I
    .param p5, "Minute"    # I
    .param p6, "Second"    # I
    .param p7, "Milliseconds"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/chartcross/time/MxTime;->mYear:I

    .line 87
    iput p2, p0, Lcom/chartcross/time/MxTime;->mMonth:I

    .line 88
    iput p3, p0, Lcom/chartcross/time/MxTime;->mDay:I

    .line 89
    iput p4, p0, Lcom/chartcross/time/MxTime;->mHour:I

    .line 90
    iput p5, p0, Lcom/chartcross/time/MxTime;->mMinute:I

    .line 91
    iput p6, p0, Lcom/chartcross/time/MxTime;->mSecond:I

    .line 92
    iput p7, p0, Lcom/chartcross/time/MxTime;->mMilliseconds:I

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/text/format/Time;)V
    .locals 1
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iget v0, p1, Landroid/text/format/Time;->year:I

    iput v0, p0, Lcom/chartcross/time/MxTime;->mYear:I

    .line 40
    iget v0, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chartcross/time/MxTime;->mMonth:I

    .line 41
    iget v0, p1, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Lcom/chartcross/time/MxTime;->mDay:I

    .line 42
    iget v0, p1, Landroid/text/format/Time;->hour:I

    iput v0, p0, Lcom/chartcross/time/MxTime;->mHour:I

    .line 43
    iget v0, p1, Landroid/text/format/Time;->minute:I

    iput v0, p0, Lcom/chartcross/time/MxTime;->mMinute:I

    .line 44
    iget v0, p1, Landroid/text/format/Time;->second:I

    iput v0, p0, Lcom/chartcross/time/MxTime;->mSecond:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartcross/time/MxTime;->mMilliseconds:I

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/chartcross/time/MxTime;)V
    .locals 1
    .param p1, "time"    # Lcom/chartcross/time/MxTime;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/chartcross/time/MxTime;->GetYear()I

    move-result v0

    iput v0, p0, Lcom/chartcross/time/MxTime;->mYear:I

    .line 29
    invoke-virtual {p1}, Lcom/chartcross/time/MxTime;->GetMonth()I

    move-result v0

    iput v0, p0, Lcom/chartcross/time/MxTime;->mMonth:I

    .line 30
    invoke-virtual {p1}, Lcom/chartcross/time/MxTime;->GetDay()I

    move-result v0

    iput v0, p0, Lcom/chartcross/time/MxTime;->mDay:I

    .line 31
    invoke-virtual {p1}, Lcom/chartcross/time/MxTime;->GetHour()I

    move-result v0

    iput v0, p0, Lcom/chartcross/time/MxTime;->mHour:I

    .line 32
    invoke-virtual {p1}, Lcom/chartcross/time/MxTime;->GetMinute()I

    move-result v0

    iput v0, p0, Lcom/chartcross/time/MxTime;->mMinute:I

    .line 33
    invoke-virtual {p1}, Lcom/chartcross/time/MxTime;->GetSecond()I

    move-result v0

    iput v0, p0, Lcom/chartcross/time/MxTime;->mSecond:I

    .line 34
    invoke-virtual {p1}, Lcom/chartcross/time/MxTime;->GetMilliseconds()I

    move-result v0

    iput v0, p0, Lcom/chartcross/time/MxTime;->mMilliseconds:I

    .line 35
    return-void
.end method


# virtual methods
.method public AddDays(J)V
    .locals 4
    .param p1, "Days"    # J

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/chartcross/time/MxTime;->GetJulianDay()D

    move-result-wide v0

    .line 239
    .local v0, "JulianDay":D
    long-to-double v2, p1

    add-double/2addr v0, v2

    .line 240
    invoke-virtual {p0, v0, v1}, Lcom/chartcross/time/MxTime;->SetDateFromJulianDay(D)V

    .line 241
    return-void
.end method

.method public GetDay()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/chartcross/time/MxTime;->mDay:I

    return v0
.end method

.method public GetDayOfYear()I
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    .line 102
    invoke-virtual {p0}, Lcom/chartcross/time/MxTime;->IsLeapYear()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    int-to-double v0, v2

    .line 103
    .local v0, "k":D
    const-wide v2, 0x4071300000000000L    # 275.0

    iget v4, p0, Lcom/chartcross/time/MxTime;->mMonth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    iget v4, p0, Lcom/chartcross/time/MxTime;->mMonth:I

    int-to-double v4, v4

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    iget v4, p0, Lcom/chartcross/time/MxTime;->mDay:I

    int-to-double v4, v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    sub-double/2addr v2, v4

    double-to-int v2, v2

    return v2

    .line 102
    .end local v0    # "k":D
    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public GetFormattedTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 245
    const-string v0, "%02d:%02d:%02d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/chartcross/time/MxTime;->mHour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/chartcross/time/MxTime;->mMinute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/chartcross/time/MxTime;->mSecond:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetHour()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/chartcross/time/MxTime;->mHour:I

    return v0
.end method

.method public GetJulianDay()D
    .locals 22

    .prologue
    .line 113
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/time/MxTime;->mMonth:I

    move v12, v0

    int-to-long v6, v12

    .line 114
    .local v6, "Month":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/time/MxTime;->mYear:I

    move v12, v0

    int-to-long v8, v12

    .line 116
    .local v8, "Year":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/time/MxTime;->mDay:I

    move v12, v0

    int-to-double v12, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/time/MxTime;->mHour:I

    move v14, v0

    int-to-double v14, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/time/MxTime;->mMinute:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/time/MxTime;->mSecond:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    div-double v18, v18, v20

    add-double v16, v16, v18

    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    div-double v16, v16, v18

    add-double v14, v14, v16

    const-wide/high16 v16, 0x4038000000000000L    # 24.0

    div-double v14, v14, v16

    add-double v2, v12, v14

    .line 118
    .local v2, "DayDecimal":D
    const-wide/16 v12, 0x3

    cmp-long v12, v6, v12

    if-gez v12, :cond_0

    .line 120
    const-wide/16 v12, 0xc

    add-long/2addr v6, v12

    .line 121
    const-wide/16 v12, 0x1

    sub-long/2addr v8, v12

    .line 124
    :cond_0
    const-wide v12, 0x4076d40000000000L    # 365.25

    long-to-double v14, v8

    const-wide v16, 0x40b26c0000000000L    # 4716.0

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    const-wide v14, 0x403e99a027525461L    # 30.6001

    const-wide/16 v16, 0x1

    add-long v16, v16, v6

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    add-double/2addr v12, v2

    const-wide v14, 0x4097d20000000000L    # 1524.5

    sub-double v4, v12, v14

    .line 126
    .local v4, "JulianDay":D
    const-wide v12, 0x41418a8c00000000L    # 2299160.0

    cmpl-double v12, v4, v12

    if-lez v12, :cond_1

    .line 128
    long-to-double v12, v8

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    .line 129
    .local v10, "a":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    sub-double/2addr v12, v10

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    div-double v14, v10, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    add-double/2addr v4, v12

    .line 136
    .end local v10    # "a":D
    :cond_1
    return-wide v4
.end method

.method public GetMilliseconds()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/chartcross/time/MxTime;->mMilliseconds:I

    return v0
.end method

.method public GetMinute()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/chartcross/time/MxTime;->mMinute:I

    return v0
.end method

.method public GetMonth()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/chartcross/time/MxTime;->mMonth:I

    return v0
.end method

.method public GetSecond()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/chartcross/time/MxTime;->mSecond:I

    return v0
.end method

.method public GetYear()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/chartcross/time/MxTime;->mYear:I

    return v0
.end method

.method public IsLeapYear()Z
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/chartcross/time/MxTime;->mYear:I

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/chartcross/time/MxTime;->mYear:I

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/chartcross/time/MxTime;->mYear:I

    rem-int/lit16 v0, v0, 0x190

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public SetDateFromJulianDay(D)V
    .locals 22
    .param p1, "JulianDay"    # D

    .prologue
    .line 142
    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v18, v18, p1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    .line 143
    .local v16, "z":D
    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v18, v18, p1

    sub-double v14, v18, v16

    .line 145
    .local v14, "f":D
    const-wide v18, 0x41418a8c80000000L    # 2299161.0

    cmpg-double v18, v16, v18

    if-gez v18, :cond_0

    .line 147
    move-wide/from16 v2, v16

    .line 155
    .local v2, "A":D
    :goto_0
    const-wide v18, 0x4097d00000000000L    # 1524.0

    add-double v4, v2, v18

    .line 156
    .local v4, "B":D
    const-wide v18, 0x405e866666666666L    # 122.1

    sub-double v18, v4, v18

    const-wide v20, 0x4076d40000000000L    # 365.25

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 157
    .local v6, "C":D
    const-wide v18, 0x4076d40000000000L    # 365.25

    mul-double v18, v18, v6

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 158
    .local v8, "D":D
    sub-double v18, v4, v8

    const-wide v20, 0x403e99a027525461L    # 30.6001

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    .line 160
    .local v10, "E":D
    sub-double v18, v4, v8

    const-wide v20, 0x403e99a027525461L    # 30.6001

    mul-double v20, v20, v10

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    sub-double v18, v18, v20

    add-double v18, v18, v14

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/time/MxTime;->mDay:I

    .line 161
    const-wide/high16 v18, 0x402c000000000000L    # 14.0

    cmpg-double v18, v10, v18

    if-gez v18, :cond_1

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v18, v10, v18

    :goto_1
    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/time/MxTime;->mMonth:I

    .line 162
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/time/MxTime;->mMonth:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    const-wide v18, 0x40b26c0000000000L    # 4716.0

    sub-double v18, v6, v18

    :goto_2
    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/time/MxTime;->mYear:I

    .line 163
    return-void

    .line 151
    .end local v2    # "A":D
    .end local v4    # "B":D
    .end local v6    # "C":D
    .end local v8    # "D":D
    .end local v10    # "E":D
    :cond_0
    const-wide v18, 0x413c7dd040000000L    # 1867216.25

    sub-double v18, v16, v18

    const-wide v20, 0x40e1d58800000000L    # 36524.25

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    .line 152
    .local v12, "alpha":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v18, v18, v16

    add-double v18, v18, v12

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    div-double v20, v12, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    sub-double v2, v18, v20

    .restart local v2    # "A":D
    goto/16 :goto_0

    .line 161
    .end local v12    # "alpha":D
    .restart local v4    # "B":D
    .restart local v6    # "C":D
    .restart local v8    # "D":D
    .restart local v10    # "E":D
    :cond_1
    const-wide/high16 v18, 0x402a000000000000L    # 13.0

    sub-double v18, v10, v18

    goto :goto_1

    .line 162
    :cond_2
    const-wide v18, 0x40b26b0000000000L    # 4715.0

    sub-double v18, v6, v18

    goto :goto_2
.end method

.method public SetDay(I)V
    .locals 0
    .param p1, "Day"    # I

    .prologue
    .line 319
    iput p1, p0, Lcom/chartcross/time/MxTime;->mDay:I

    .line 320
    return-void
.end method

.method public SetHour(I)V
    .locals 0
    .param p1, "Hour"    # I

    .prologue
    .line 329
    iput p1, p0, Lcom/chartcross/time/MxTime;->mHour:I

    .line 330
    return-void
.end method

.method public SetMilliseconds(I)V
    .locals 0
    .param p1, "Milliseconds"    # I

    .prologue
    .line 359
    iput p1, p0, Lcom/chartcross/time/MxTime;->mMilliseconds:I

    .line 360
    return-void
.end method

.method public SetMinute(I)V
    .locals 0
    .param p1, "Minute"    # I

    .prologue
    .line 339
    iput p1, p0, Lcom/chartcross/time/MxTime;->mMinute:I

    .line 340
    return-void
.end method

.method public SetMonth(I)V
    .locals 0
    .param p1, "Month"    # I

    .prologue
    .line 309
    iput p1, p0, Lcom/chartcross/time/MxTime;->mMonth:I

    .line 310
    return-void
.end method

.method public SetSecond(I)V
    .locals 0
    .param p1, "Second"    # I

    .prologue
    .line 349
    iput p1, p0, Lcom/chartcross/time/MxTime;->mSecond:I

    .line 350
    return-void
.end method

.method public SetTimeFromMinutesSinceMidnight(D)V
    .locals 10
    .param p1, "TimeMinutes"    # D

    .prologue
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    .line 190
    div-double v0, p1, v8

    .line 191
    .local v0, "dHour":D
    double-to-int v6, v0

    iput v6, p0, Lcom/chartcross/time/MxTime;->mHour:I

    .line 193
    iget v6, p0, Lcom/chartcross/time/MxTime;->mHour:I

    int-to-double v6, v6

    sub-double v6, v0, v6

    mul-double v2, v8, v6

    .line 194
    .local v2, "dMinute":D
    double-to-int v6, v2

    iput v6, p0, Lcom/chartcross/time/MxTime;->mMinute:I

    .line 196
    iget v6, p0, Lcom/chartcross/time/MxTime;->mMinute:I

    int-to-double v6, v6

    sub-double v6, v2, v6

    mul-double v4, v8, v6

    .line 197
    .local v4, "dSecond":D
    double-to-int v6, v4

    iput v6, p0, Lcom/chartcross/time/MxTime;->mSecond:I

    .line 198
    const/4 v6, 0x0

    iput v6, p0, Lcom/chartcross/time/MxTime;->mMilliseconds:I

    .line 199
    return-void
.end method

.method public SetYear(I)V
    .locals 0
    .param p1, "Year"    # I

    .prologue
    .line 299
    iput p1, p0, Lcom/chartcross/time/MxTime;->mYear:I

    .line 300
    return-void
.end method
