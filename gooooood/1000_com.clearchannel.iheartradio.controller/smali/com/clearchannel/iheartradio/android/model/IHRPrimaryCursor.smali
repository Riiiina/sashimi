.class public Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;
.super Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;
.source "IHRPrimaryCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor$IHRPrimaryCursorAdapter;
    }
.end annotation


# instance fields
.field mFixed:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;-><init>()V

    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Local Stations"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "All Cities"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Formats"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Personalities"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Premium"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->mFixed:[Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->mCursorIndex:I

    if-ltz v1, :cond_0

    .line 60
    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->mCursorIndex:I

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->mFixed:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 61
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->mFixed:[Ljava/lang/String;

    iget v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->mCursorIndex:I

    aget-object v1, v1, v2

    move-object v0, v1

    :cond_0
    :goto_0
    move-object v1, v0

    .line 66
    :goto_1
    return-object v1

    .line 61
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0

    .line 62
    :cond_2
    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->mCursorIndex:I

    iget v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->mCursorCount:I

    if-ge v1, v2, :cond_0

    .line 63
    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->mCursorIndex:I

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->mFixed:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->getStringForIndex(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public newAdapter(Landroid/content/Context;)Landroid/widget/SimpleCursorAdapter;
    .locals 7
    .param p1, "inContext"    # Landroid/content/Context;

    .prologue
    .line 71
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor$IHRPrimaryCursorAdapter;

    const v3, 0x7f03000b

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->kColumns:[Ljava/lang/String;

    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->kColumnsID:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor$IHRPrimaryCursorAdapter;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method public prepareIntent(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "index"    # I

    .prologue
    .line 40
    if-ltz p2, :cond_0

    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->mCursorCount:I

    if-ge p2, v0, :cond_0

    .line 41
    packed-switch p2, :pswitch_data_0

    .line 49
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->mCursorIndex:I

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->mFixed:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v0, v1

    invoke-super {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;->prepareIntent(Landroid/content/Intent;I)V

    .line 52
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 42
    :pswitch_1
    const-string v0, "source"

    const-string v1, "local"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 43
    :pswitch_2
    const-string v0, "source"

    const-string v1, "cities"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "class"

    const-class v2, Lcom/clearchannel/iheartradio/controller/IHRControllerCities;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 44
    :pswitch_3
    const-string v0, "source"

    const-string v1, "formats"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 45
    :pswitch_4
    const-string v0, "source"

    const-string v1, "format"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->mFixed:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 46
    :pswitch_5
    const-string v0, "source"

    const-string v1, "channels"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "class"

    const-class v2, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumChannels;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public setContents(Ljava/util/List;)V
    .locals 2
    .param p1, "inFeatured"    # Ljava/util/List;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->mContents:Ljava/util/List;

    .line 33
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->mFixed:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->mCursorCount:I

    .line 35
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->mCursorCount:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->mCursorCount:I

    .line 36
    :cond_0
    return-void
.end method
