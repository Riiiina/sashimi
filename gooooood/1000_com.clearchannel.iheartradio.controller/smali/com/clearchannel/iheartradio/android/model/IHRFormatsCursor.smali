.class public Lcom/clearchannel/iheartradio/android/model/IHRFormatsCursor;
.super Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
.source "IHRFormatsCursor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;-><init>()V

    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 20
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRFormatsCursor;->mCursorIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRFormatsCursor;->mCursorIndex:I

    iget v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRFormatsCursor;->mCursorCount:I

    if-ge v1, v2, :cond_0

    .line 21
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRFormatsCursor;->mContents:Ljava/util/List;

    iget v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRFormatsCursor;->mCursorIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRFormatsCursor;
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 24
    :cond_0
    :goto_0
    return-object v0

    .line 21
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRFormatsCursor;
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public prepareIntent(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "index"    # I

    .prologue
    .line 9
    if-ltz p2, :cond_0

    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRFormatsCursor;->mCursorCount:I

    if-ge p2, v0, :cond_0

    .line 11
    const-string v0, "source"

    const-string v1, "format"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    const-string v0, "index"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    :cond_0
    return-void
.end method
