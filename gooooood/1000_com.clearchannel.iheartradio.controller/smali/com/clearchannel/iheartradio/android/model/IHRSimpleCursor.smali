.class public Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;
.super Lcom/clearchannel/iheartradio/model/IHRObject;
.source "IHRSimpleCursor.java"

# interfaces
.implements Landroid/database/Cursor;


# instance fields
.field protected mCursorCount:I

.field protected mCursorIndex:I

.field protected mObserveContent:Landroid/database/ContentObservable;

.field protected mObserveDataSet:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRObject;-><init>()V

    .line 17
    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorIndex:I

    .line 18
    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorCount:I

    .line 16
    return-void
.end method

.method protected static getColumnIndexIn(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p0, "inName"    # Ljava/lang/String;
    .param p1, "inNames"    # [Ljava/lang/String;

    .prologue
    .line 24
    const/4 v2, -0x1

    .line 25
    .local v2, "result":I
    array-length v0, p1

    .line 27
    .local v0, "c":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 34
    :goto_1
    return v2

    .line 28
    :cond_0
    aget-object v3, p1, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 29
    move v2, v1

    .line 30
    goto :goto_1

    .line 27
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorCount:I

    .line 40
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveContent:Landroid/database/ContentObservable;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveContent:Landroid/database/ContentObservable;

    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    .line 42
    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveContent:Landroid/database/ContentObservable;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveDataSet:Landroid/database/DataSetObservable;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveDataSet:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 47
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveDataSet:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->unregisterAll()V

    .line 48
    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveDataSet:Landroid/database/DataSetObservable;

    .line 50
    :cond_1
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/database/CharArrayBuffer;

    .prologue
    .line 62
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorCount:I

    if-lez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorCount:I

    .line 56
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveDataSet:Landroid/database/DataSetObservable;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveDataSet:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 60
    :cond_0
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 69
    .local v0, "result":I
    if-gez v0, :cond_0

    const-string v1, "_id"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_0
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorCount:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 83
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 85
    if-gez p1, :cond_0

    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorIndex:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 86
    if-gez p1, :cond_0

    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorIndex:I

    :goto_0
    int-to-long v0, v0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorIndex:I

    return v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 88
    const-string v0, ""

    return-object v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorIndex:I

    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorCount:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 97
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorIndex:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iput v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorIndex:I

    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public moveToLast()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 99
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorIndex:I

    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorCount:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToNext()Z
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorIndex:I

    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorCount:I

    if-ge v0, v1, :cond_0

    .line 103
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorIndex:I

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToPosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 120
    const/4 v0, 0x1

    .line 122
    .local v0, "result":Z
    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorCount:I

    if-le p1, v1, :cond_1

    .line 123
    iget p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorCount:I

    .line 124
    const/4 v0, 0x0

    .line 130
    :cond_0
    :goto_0
    iput p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorIndex:I

    .line 132
    return v0

    .line 125
    :cond_1
    const/4 v1, -0x1

    if-ge p1, v1, :cond_0

    .line 126
    const/4 p1, -0x1

    .line 127
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 111
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorIndex:I

    if-gez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    .line 114
    :cond_0
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorIndex:I

    move v0, v1

    .line 115
    goto :goto_0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveContent:Landroid/database/ContentObservable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveContent:Landroid/database/ContentObservable;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveContent:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    .line 139
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveDataSet:Landroid/database/DataSetObservable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveDataSet:Landroid/database/DataSetObservable;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveDataSet:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public requery()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    iput v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorIndex:I

    .line 150
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveDataSet:Landroid/database/DataSetObservable;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveDataSet:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 154
    :cond_0
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mCursorCount:I

    if-gez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 157
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 159
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveContent:Landroid/database/ContentObservable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveContent:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 163
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveDataSet:Landroid/database/DataSetObservable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;->mObserveDataSet:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 167
    :cond_0
    return-void
.end method
