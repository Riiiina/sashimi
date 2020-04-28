.class public Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;
.super Ljava/lang/Object;
.source "AppDatabaseItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final FLAG_ADS:I = 0x20

.field public static final FLAG_EXTERNAL:I = 0x4

.field public static final FLAG_FORWARD_LOCKED:I = 0x40

.field private static final FLAG_LIVE_WALLPAPER:I = 0x8

.field private static final FLAG_WIDGET:I = 0x10

.field public static final STATE_ADD:I = 0x1

.field public static final STATE_INSTALLED:I = 0x0

.field public static final STATE_NOT_INSTALLED:I = 0x3

.field public static final STATE_REMOVE:I = 0x2

.field public static final STOREPREF_AUTO:I = 0x0

.field public static final STOREPREF_EXTERNAL:I = 0x2

.field public static final STOREPREF_INTERNAL_ONLY:I = 0x1

.field private static final serialVersionUID:J = 0x712e36a4d588aa9bL


# instance fields
.field private appState:I

.field private assetId:Ljava/lang/String;

.field private daysMeasured:I

.field private downloads:Ljava/lang/String;

.field private firstSeenTime:J

.field private flags:I

.field private id:I

.field private latestVersion:I

.field private latestVersionString:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private rankSum:I

.field private rating:D

.field private ratingCount:I

.field private size:I

.field private skipUpdatesVersion:I

.field private snippet:Ljava/lang/String;

.field private time:J

.field private title:Ljava/lang/String;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppState()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->appState:I

    return v0
.end method

.method public getAssetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->assetId:Ljava/lang/String;

    return-object v0
.end method

.method public getDaysMeasured()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->daysMeasured:I

    return v0
.end method

.method public getDownloads()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->downloads:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstSeenTime()J
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->firstSeenTime:J

    return-wide v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->id:I

    return v0
.end method

.method public getLatestVersion()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->latestVersion:I

    return v0
.end method

.method public getLatestVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->latestVersionString:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getRankSum()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->rankSum:I

    return v0
.end method

.method public getRating()D
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->rating:D

    return-wide v0
.end method

.method public getRatingCount()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->ratingCount:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->size:I

    return v0
.end method

.method public getSkipUpdatesVersion()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->skipUpdatesVersion:I

    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->snippet:Ljava/lang/String;

    return-object v0
.end method

.method public getStorePref()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->time:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->version:I

    return v0
.end method

.method public hasAds()Z
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExternal()Z
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForwardLocked()Z
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFreeApp()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->price:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->price:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLiveWallpaper()Z
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMoveable()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 299
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->getStorePref()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->isForwardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpdateAvailable()Z
    .locals 2

    .prologue
    .line 198
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->skipUpdatesVersion:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->version:I

    iget v1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->skipUpdatesVersion:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->latestVersion:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWidget()Z
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAds(Z)V
    .locals 1
    .param p1, "ads"    # Z

    .prologue
    .line 244
    if-eqz p1, :cond_0

    .line 245
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    goto :goto_0
.end method

.method public setAppState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->appState:I

    .line 123
    return-void
.end method

.method public setAssetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "assetId"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->assetId:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setDaysMeasured(I)V
    .locals 0
    .param p1, "daysMeasured"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->daysMeasured:I

    .line 71
    return-void
.end method

.method public setDownloads(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloads"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->downloads:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setExternal(Z)V
    .locals 1
    .param p1, "external"    # Z

    .prologue
    .line 276
    if-eqz p1, :cond_0

    .line 277
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    goto :goto_0
.end method

.method public setFirstSeenTime(J)V
    .locals 0
    .param p1, "firstSeenTime"    # J

    .prologue
    .line 210
    iput-wide p1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->firstSeenTime:J

    .line 211
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 268
    iput p1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    .line 269
    return-void
.end method

.method public setForwardLocked(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 288
    if-eqz p1, :cond_0

    .line 289
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    goto :goto_0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->id:I

    .line 87
    return-void
.end method

.method public setLatestVersion(I)V
    .locals 0
    .param p1, "latestVersion"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->latestVersion:I

    .line 183
    return-void
.end method

.method public setLatestVersionString(Ljava/lang/String;)V
    .locals 0
    .param p1, "latestVersionString"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->latestVersionString:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setLiveWallpaper(Z)V
    .locals 1
    .param p1, "liveWallpaper"    # Z

    .prologue
    .line 256
    if-eqz p1, :cond_0

    .line 257
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->packageName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->price:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setRankSum(I)V
    .locals 0
    .param p1, "rankSum"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->rankSum:I

    .line 79
    return-void
.end method

.method public setRating(D)V
    .locals 0
    .param p1, "rating"    # D

    .prologue
    .line 138
    iput-wide p1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->rating:D

    .line 139
    return-void
.end method

.method public setRatingCount(I)V
    .locals 0
    .param p1, "ratingCount"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->ratingCount:I

    .line 147
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->size:I

    .line 63
    return-void
.end method

.method public setSkipUpdatesVersion(I)V
    .locals 0
    .param p1, "skipUpdatesVersion"    # I

    .prologue
    .line 202
    iput p1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->skipUpdatesVersion:I

    .line 203
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 0
    .param p1, "snippet"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->snippet:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setStorePref(I)V
    .locals 1
    .param p1, "storePref"    # I

    .prologue
    .line 218
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 219
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    and-int/lit8 v0, v0, -0x4

    or-int/2addr v0, p1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    .line 221
    :cond_0
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->time:J

    .line 115
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->title:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->version:I

    .line 107
    return-void
.end method

.method public setWidget(Z)V
    .locals 1
    .param p1, "widget"    # Z

    .prologue
    .line 232
    if-eqz p1, :cond_0

    .line 233
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    iget v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;->flags:I

    goto :goto_0
.end method
