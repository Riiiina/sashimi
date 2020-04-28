.class public Lcom/clearchannel/iheartradio/android/model/IHRSongCursor;
.super Lcom/clearchannel/iheartradio/android/model/IHRTwoLineCursor;
.source "IHRSongCursor.java"


# instance fields
.field final kResourceID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/model/IHRTwoLineCursor;-><init>()V

    .line 11
    const v0, 0x7f03000d

    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSongCursor;->kResourceID:I

    .line 10
    return-void
.end method


# virtual methods
.method public getStringForIndex(II)Ljava/lang/String;
    .locals 4
    .param p1, "inColumn"    # I
    .param p2, "inIndex"    # I

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 23
    .local v0, "result":Ljava/lang/String;
    if-ltz p2, :cond_1

    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRSongCursor;->mCursorCount:I

    if-ge p2, v1, :cond_1

    .line 24
    if-ltz p1, :cond_0

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    .line 27
    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRSongCursor;
    :cond_1
    :goto_0
    return-object v0

    .line 24
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRSongCursor;
    :cond_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRSongCursor;->mContents:Ljava/util/List;

    mul-int/lit8 v2, p2, 0x2

    xor-int/lit8 v3, p1, 0x1

    add-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRSongCursor;
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public newAdapter(Landroid/content/Context;)Landroid/widget/SimpleCursorAdapter;
    .locals 6
    .param p1, "inContext"    # Landroid/content/Context;

    .prologue
    .line 30
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f03000d

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRSongCursor;->kColumns:[Ljava/lang/String;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRSongCursor;->kColumnsID:[I

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method public setContents(Ljava/util/List;)V
    .locals 1
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRSongCursor;->mContents:Ljava/util/List;

    .line 16
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSongCursor;->mCursorCount:I

    .line 17
    return-void

    .line 16
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method
