.class public Lcom/clearchannel/iheartradio/android/model/IHRTwoLineCursor;
.super Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
.source "IHRTwoLineCursor.java"


# instance fields
.field final kColumns:[Ljava/lang/String;

.field final kColumnsID:[I

.field final kResourceID:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 8
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;-><init>()V

    .line 9
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "line1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "line2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRTwoLineCursor;->kColumns:[Ljava/lang/String;

    .line 10
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRTwoLineCursor;->kColumnsID:[I

    .line 11
    const v0, 0x7f03000b

    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRTwoLineCursor;->kResourceID:I

    .line 8
    return-void

    .line 10
    nop

    :array_0
    .array-data 4
        0x7f090042
        0x7f090044
    .end array-data
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRTwoLineCursor;->kColumns:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRTwoLineCursor;->kColumns:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRTwoLineCursor;->getColumnIndexIn(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 18
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRTwoLineCursor;->kColumns:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRTwoLineCursor;->kColumns:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRTwoLineCursor;->kColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public newAdapter(Landroid/content/Context;)Landroid/widget/SimpleCursorAdapter;
    .locals 6
    .param p1, "inContext"    # Landroid/content/Context;

    .prologue
    .line 23
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f03000b

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRTwoLineCursor;->kColumns:[Ljava/lang/String;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRTwoLineCursor;->kColumnsID:[I

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method
