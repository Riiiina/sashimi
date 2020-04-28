.class public Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
.super Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;
.source "IHROneLineCursor.java"


# instance fields
.field final kColumns:[Ljava/lang/String;

.field final kColumnsID:[I

.field final kResourceID:I

.field public mContents:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/model/IHRSimpleCursor;-><init>()V

    .line 12
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "line1"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->kColumns:[Ljava/lang/String;

    .line 13
    new-array v0, v3, [I

    const v1, 0x7f090042

    aput v1, v0, v2

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->kColumnsID:[I

    .line 14
    const v0, 0x7f03000f

    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->kResourceID:I

    .line 11
    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->kColumns:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->kColumns:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->getColumnIndexIn(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 53
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->kColumns:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->kColumns:[Ljava/lang/String;

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
    .line 55
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->kColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 45
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->mCursorIndex:I

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->getStringForIndex(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringForIndex(II)Ljava/lang/String;
    .locals 2
    .param p1, "inColumn"    # I
    .param p2, "inIndex"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 36
    .local v0, "result":Ljava/lang/String;
    if-ltz p2, :cond_0

    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->mCursorCount:I

    if-ge p2, v1, :cond_0

    .line 37
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->mContents:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 40
    :cond_0
    :goto_0
    return-object v0

    .line 37
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public newAdapter(Landroid/content/Context;)Landroid/widget/SimpleCursorAdapter;
    .locals 6
    .param p1, "inContext"    # Landroid/content/Context;

    .prologue
    .line 57
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f03000f

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->kColumns:[Ljava/lang/String;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->kColumnsID:[I

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method public prepareIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->mCursorIndex:I

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->prepareIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public prepareIntent(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "index"    # I

    .prologue
    .line 26
    if-ltz p2, :cond_0

    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->mCursorCount:I

    if-ge p2, v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->mContents:Ljava/util/List;

    iget v2, p0, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->mCursorIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29
    .local v0, "string":Ljava/lang/String;
    const-string v1, "station"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .end local v0    # "string":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setContents(Ljava/util/List;)V
    .locals 1
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->mContents:Ljava/util/List;

    .line 20
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->mCursorCount:I

    .line 21
    return-void

    .line 20
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
