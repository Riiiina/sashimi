.class public Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor;
.super Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
.source "IHRCitiesCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;-><init>()V

    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 26
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor;->mCursorIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor;->mCursorIndex:I

    iget v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor;->mCursorCount:I

    if-ge v1, v2, :cond_0

    .line 27
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor;->mContents:Ljava/util/List;

    iget v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor;->mCursorIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor;
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 30
    :cond_0
    :goto_0
    return-object v0

    .line 27
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor;
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public newAdapter(Landroid/content/Context;)Landroid/widget/SimpleCursorAdapter;
    .locals 7
    .param p1, "inContext"    # Landroid/content/Context;

    .prologue
    .line 121
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;

    const v3, 0x7f03000f

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor;->kColumns:[Ljava/lang/String;

    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor;->kColumnsID:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method public prepareIntent(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "index"    # I

    .prologue
    .line 15
    if-ltz p2, :cond_0

    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor;->mCursorCount:I

    if-ge p2, v0, :cond_0

    .line 17
    const-string v0, "source"

    const-string v1, "city"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    const-string v0, "index"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    :cond_0
    return-void
.end method
