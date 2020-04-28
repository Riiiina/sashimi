.class public Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;
.super Lcom/clearchannel/iheartradio/android/model/IHRThreeLineCursor;
.source "IHRArchiveCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;
    }
.end annotation


# static fields
.field public static sDurations:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;


# instance fields
.field _adapter:Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;

.field private _mapping:[I

.field public mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

.field public mOffline:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/model/IHRThreeLineCursor;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "inSite"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/model/IHRThreeLineCursor;-><init>()V

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->setContentsBySite(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;)[I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->_mapping:[I

    return-object v0
.end method

.method public static applyProgressToRow(IIZLandroid/view/View;)V
    .locals 11
    .param p0, "inCurrent"    # I
    .param p1, "inMaximum"    # I
    .param p2, "inPaused"    # Z
    .param p3, "inRow"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x4

    const/4 v10, 0x2

    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 212
    const/4 v2, 0x0

    .line 214
    .local v2, "state":I
    if-ge p0, p1, :cond_7

    .line 215
    if-eqz p2, :cond_6

    move v2, v10

    .line 222
    :goto_0
    const v5, 0x7f09004e

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 223
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 224
    if-ne v7, v2, :cond_9

    move v5, v6

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 225
    if-eq v7, v2, :cond_0

    check-cast v4, Landroid/widget/ImageView;

    .end local v4    # "view":Landroid/view/View;
    if-nez v2, :cond_a

    const v5, 0x7f020030

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    :cond_0
    const v5, 0x7f09004f

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 229
    .restart local v4    # "view":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 230
    if-eq v7, v2, :cond_b

    move v5, v9

    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 231
    if-eq v7, v2, :cond_c

    move v5, v9

    :goto_4
    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 232
    check-cast v4, Landroid/widget/ImageView;

    .end local v4    # "view":Landroid/view/View;
    if-eq v7, v2, :cond_e

    if-ne v9, v2, :cond_d

    const v5, 0x7f020032

    :goto_5
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    :cond_1
    const v5, 0x7f090051

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 236
    .restart local v4    # "view":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 237
    if-eq v9, v2, :cond_2

    if-ne v10, v2, :cond_f

    :cond_2
    move v5, v8

    :goto_6
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 238
    move-object v0, v4

    check-cast v0, Landroid/widget/ProgressBar;

    move-object v5, v0

    if-lez p1, :cond_10

    move v6, p1

    :goto_7
    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 239
    check-cast v4, Landroid/widget/ProgressBar;

    .end local v4    # "view":Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 242
    :cond_3
    const v5, 0x7f090050

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 243
    .restart local v4    # "view":Landroid/view/View;
    if-eqz v4, :cond_5

    .line 244
    const-string v3, ""

    .line 246
    .local v3, "text":Ljava/lang/String;
    if-ne v7, v2, :cond_11

    .line 247
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "inCurrent":I
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->durationForURL(Ljava/lang/String;)I

    move-result v1

    .line 249
    .local v1, "duration":I
    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    const v7, 0xea60

    div-int v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    div-int/lit16 v7, v1, 0x3e8

    rem-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 254
    .end local v1    # "duration":I
    :cond_4
    :goto_8
    check-cast v4, Landroid/widget/TextView;

    .end local v4    # "view":Landroid/view/View;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    .end local v3    # "text":Ljava/lang/String;
    :cond_5
    return-void

    .restart local p0    # "inCurrent":I
    :cond_6
    move v2, v9

    .line 215
    goto/16 :goto_0

    .line 216
    :cond_7
    if-lez p1, :cond_8

    .line 217
    const/4 v2, 0x3

    goto/16 :goto_0

    .line 219
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .restart local v4    # "view":Landroid/view/View;
    :cond_9
    move v5, v8

    .line 224
    goto/16 :goto_1

    .line 225
    .end local v4    # "view":Landroid/view/View;
    :cond_a
    const v5, 0x7f020031

    goto/16 :goto_2

    .restart local v4    # "view":Landroid/view/View;
    :cond_b
    move v5, v8

    .line 230
    goto/16 :goto_3

    :cond_c
    move v5, v8

    .line 231
    goto :goto_4

    .line 232
    .end local v4    # "view":Landroid/view/View;
    :cond_d
    const v5, 0x7f02002f

    goto :goto_5

    :cond_e
    const v5, 0x7f02001e

    goto :goto_5

    .restart local v4    # "view":Landroid/view/View;
    :cond_f
    move v5, v6

    .line 237
    goto :goto_6

    :cond_10
    move v6, v8

    .line 238
    goto :goto_7

    .line 250
    .restart local v3    # "text":Ljava/lang/String;
    :cond_11
    if-lez v2, :cond_4

    .line 251
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0xf4240

    div-int v6, p0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0xf4240

    rem-int v6, p0, v6

    const v7, 0x186a0

    div-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8
.end method

.method public static applyProgressToRow(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;Landroid/view/View;)V
    .locals 5
    .param p0, "inProgress"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .param p1, "inRow"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 259
    const-string v3, "offset"

    invoke-virtual {p0, v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->integerValue(Ljava/lang/String;I)I

    move-result v1

    .line 260
    .local v1, "offset":I
    const-string v3, "length"

    invoke-virtual {p0, v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->integerValue(Ljava/lang/String;I)I

    move-result v0

    .line 261
    .local v0, "length":I
    const-string v3, "paused"

    invoke-virtual {p0, v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->booleanValue(Ljava/lang/String;Z)Z

    move-result v2

    .line 263
    .local v2, "paused":Z
    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    const-string v3, "queued"

    invoke-virtual {p0, v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->booleanValue(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    const/4 v0, 0x1

    .line 267
    :cond_0
    invoke-static {v1, v0, v2, p1}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->applyProgressToRow(IIZLandroid/view/View;)V

    .line 268
    return-void
.end method

.method public static durationForURL(Ljava/lang/String;)I
    .locals 5
    .param p0, "inURL"    # Ljava/lang/String;

    .prologue
    .line 182
    const/4 v2, 0x0

    .line 184
    .local v2, "result":I
    sget-object v3, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->sDurations:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v3, :cond_1

    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    sput-object v3, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->sDurations:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 187
    :goto_0
    if-nez v2, :cond_0

    .line 189
    :try_start_0
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRCache;->shared()Lcom/clearchannel/iheartradio/model/IHRCache;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/clearchannel/iheartradio/model/IHRCache;->pathForURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 192
    .local v1, "player":Landroid/media/MediaPlayer;
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 195
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    .line 197
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 198
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 201
    sget-object v3, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->sDurations:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, p0, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "player":Landroid/media/MediaPlayer;
    :cond_0
    :goto_1
    return v2

    .line 185
    :cond_1
    sget-object v3, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->sDurations:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->integerValue(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 202
    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public getStringForIndex(II)Ljava/lang/String;
    .locals 9
    .param p1, "inColumn"    # I
    .param p2, "inIndex"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 134
    const-string v3, ""

    .line 135
    .local v3, "result":Ljava/lang/String;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->_mapping:[I

    if-nez v5, :cond_1

    move v1, v8

    .line 137
    .local v1, "mapped":I
    :goto_0
    if-lez v1, :cond_3

    .line 138
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mContents:Ljava/util/List;

    sub-int v6, v1, v7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .line 141
    .local v0, "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    packed-switch p1, :pswitch_data_0

    .line 178
    .end local v0    # "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    :cond_0
    :goto_1
    return-object v3

    .line 135
    .end local v1    # "mapped":I
    :cond_1
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->_mapping:[I

    aget v5, v5, p2

    move v1, v5

    goto :goto_0

    .line 143
    .restart local v0    # "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    .restart local v1    # "mapped":I
    :pswitch_0
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getName()Ljava/lang/String;

    move-result-object v3

    .line 145
    :cond_2
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_0

    .line 146
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->_mapping:[I

    aget v1, v5, p2

    .line 148
    if-gez v1, :cond_2

    .line 149
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mContents:Ljava/util/List;

    neg-int v6, v1

    sub-int/2addr v6, v7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .line 150
    .restart local v0    # "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "name":Ljava/lang/String;
    const-string v5, "Hour"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 153
    if-lez v1, :cond_0

    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 154
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 157
    goto :goto_1

    .line 161
    .end local v2    # "name":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 162
    :pswitch_2
    const-string v3, "-"

    goto :goto_1

    .line 164
    .end local v0    # "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    :cond_3
    if-nez v1, :cond_0

    .line 165
    new-array v4, v7, [Ljava/lang/String;

    .line 167
    .local v4, "string":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 172
    :pswitch_3
    const-string v3, "Live"

    goto :goto_1

    .line 173
    :pswitch_4
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getDescription()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 174
    :pswitch_5
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7, v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->minutesToShow(J[Ljava/lang/String;)I

    aget-object v3, v4, v8

    goto :goto_1

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 167
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public newAdapter(Landroid/content/Context;)Landroid/widget/SimpleCursorAdapter;
    .locals 7
    .param p1, "inContext"    # Landroid/content/Context;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->_adapter:Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;

    .line 406
    .local v0, "result":Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;
    if-nez v0, :cond_0

    .line 407
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;

    .end local v0    # "result":Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;
    const v3, 0x7f030011

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->kColumns:[Ljava/lang/String;

    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->kColumnsID:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 409
    .restart local v0    # "result":Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;
    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->_adapter:Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;

    .line 412
    :cond_0
    return-object v0
.end method

.method public premiumItemForPosition(I)Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    .locals 3
    .param p1, "inPosition"    # I

    .prologue
    .line 56
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->_mapping:[I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 58
    .local v0, "mapped":I
    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mContents:Ljava/util/List;

    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;
    check-cast p0, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    move-object v1, p0

    :goto_1
    return-object v1

    .line 56
    .end local v0    # "mapped":I
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->_mapping:[I

    aget v1, v1, p1

    move v0, v1

    goto :goto_0

    .line 58
    .restart local v0    # "mapped":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public prepareIntent(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "index"    # I

    .prologue
    .line 108
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->_mapping:[I

    if-nez v3, :cond_3

    const/4 v3, 0x0

    move v1, v3

    .line 109
    .local v1, "mapped":I
    :goto_0
    const/4 v2, 0x0

    .line 111
    .local v2, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-lez v1, :cond_4

    .line 112
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mContents:Ljava/util/List;

    const/4 v4, 0x1

    sub-int v4, v1, v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .line 114
    .local v0, "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    const-string v3, "archive"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 116
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-virtual {v3, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getStationForItem(Lcom/clearchannel/iheartradio/model/IHRPremiumItem;)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v2

    .line 121
    .end local v0    # "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    if-eqz v3, :cond_1

    .line 122
    const-string v3, "site"

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v3, "channel"

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 126
    :cond_1
    if-eqz v2, :cond_2

    .line 127
    const-string v3, "station"

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v3, "premium"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 130
    :cond_2
    return-void

    .line 108
    .end local v1    # "mapped":I
    .end local v2    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_3
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->_mapping:[I

    aget v3, v3, p2

    move v1, v3

    goto :goto_0

    .line 117
    .restart local v1    # "mapped":I
    .restart local v2    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_4
    if-nez v1, :cond_0

    .line 118
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getStation()Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v2

    goto :goto_1
.end method

.method public prepareMapping()I
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 62
    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mContents:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 63
    .local v0, "count":I
    const/4 v6, 0x0

    .line 67
    .local v6, "tally":I
    const/4 v5, 0x0

    .line 69
    .local v5, "prefix":Ljava/lang/String;
    mul-int/lit8 v8, v0, 0x2

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->_mapping:[I

    .line 71
    iget-boolean v8, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mOffline:Z

    if-nez v8, :cond_0

    .line 72
    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->_mapping:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "tally":I
    .local v7, "tally":I
    aput v11, v8, v6

    move v6, v7

    .line 75
    .end local v7    # "tally":I
    .restart local v6    # "tally":I
    :cond_0
    const/4 v2, 0x0

    .local v2, "index":I
    move v7, v6

    .end local v6    # "tally":I
    .restart local v7    # "tally":I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 96
    return v7

    .line 76
    :cond_1
    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mContents:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .line 77
    .local v3, "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getName()Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "name":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 80
    :cond_2
    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->_mapping:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "tally":I
    .restart local v6    # "tally":I
    neg-int v9, v2

    sub-int/2addr v9, v10

    aput v9, v8, v7

    .line 82
    const-string v8, "Hour"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 84
    .local v1, "found":I
    if-le v1, v10, :cond_3

    .line 85
    sub-int v8, v1, v10

    invoke-virtual {v4, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 93
    .end local v1    # "found":I
    :goto_1
    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->_mapping:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "tally":I
    .restart local v7    # "tally":I
    add-int/lit8 v9, v2, 0x1

    aput v9, v8, v6

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v7    # "tally":I
    .restart local v1    # "found":I
    .restart local v6    # "tally":I
    :cond_3
    if-nez v5, :cond_4

    .line 87
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 89
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .end local v1    # "found":I
    .end local v6    # "tally":I
    .restart local v7    # "tally":I
    :cond_5
    move v6, v7

    .end local v7    # "tally":I
    .restart local v6    # "tally":I
    goto :goto_1
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->setContentsBySite(Ljava/lang/String;)V

    .line 103
    invoke-super {p0}, Lcom/clearchannel/iheartradio/android/model/IHRThreeLineCursor;->requery()Z

    move-result v0

    return v0
.end method

.method public setContentsBySite(Ljava/lang/String;)V
    .locals 2
    .param p1, "inSite"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    .line 49
    .local v0, "client":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->isOffline()Z

    move-result v1

    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mOffline:Z

    .line 50
    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->fetchChannel(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 51
    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->fetchPremiumItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mContents:Ljava/util/List;

    .line 52
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->prepareMapping()I

    move-result v1

    iput v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mCursorCount:I

    .line 53
    return-void
.end method
