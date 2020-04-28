.class public Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;
.super Ljava/lang/Object;
.source "IHRPremiumChannels.java"

# interfaces
.implements Lcom/clearchannel/iheartradio/model/IHRListener;


# static fields
.field public static final kMessagePremium:Ljava/lang/String; = "com.clearchannel.iheartradio.premium"

.field public static final kNotifyNamePremium:Ljava/lang/String; = "premium"

.field public static final kNotifyPrefixPremium:Ljava/lang/String; = "premium_"

.field public static final kPreferenceKeyPremiumVersion:J = 0x4948525056657273L


# instance fields
.field private _archives:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field private _channels:Lcom/clearchannel/iheartradio/android/model/IHRVector;

.field private _version:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->context:Landroid/content/Context;

    .line 33
    sget-object v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mBroadcaster:Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    const-string v1, "IHRCacheResults"

    invoke-virtual {v0, v1, p0}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->listenFor(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRListener;)V

    .line 37
    return-void
.end method

.method public static mergeRSS(Ljava/util/List;Ljava/util/List;)I
    .locals 9
    .param p0, "inNew"    # Ljava/util/List;
    .param p1, "inOld"    # Ljava/util/List;

    .prologue
    const/4 v8, 0x0

    .line 115
    const/4 v5, 0x0

    .line 117
    .local v5, "result":I
    if-eqz p1, :cond_0

    .line 118
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 119
    .local v2, "has":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    new-instance v1, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 123
    .local v1, "had":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez p0, :cond_1

    move v0, v8

    .line 124
    .local v0, "count":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    if-lt v3, v0, :cond_2

    .line 129
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 130
    const/4 v3, 0x0

    :goto_2
    if-lt v3, v0, :cond_3

    .line 141
    if-nez p0, :cond_5

    move v0, v8

    .line 142
    :goto_3
    const/4 v3, 0x0

    :goto_4
    if-lt v3, v0, :cond_6

    .line 150
    .end local v0    # "count":I
    .end local v1    # "had":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v2    # "has":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v3    # "index":I
    :cond_0
    return v5

    .line 123
    .restart local v1    # "had":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local v2    # "has":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 125
    .restart local v0    # "count":I
    .restart local v3    # "index":I
    :cond_2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .line 126
    .local v4, "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getGUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getLink()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 131
    .end local v4    # "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    :cond_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .line 132
    .restart local v4    # "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getGUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getLink()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getGUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    .line 135
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRCache;->shared()Lcom/clearchannel/iheartradio/model/IHRCache;

    move-result-object v6

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getLink()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/clearchannel/iheartradio/model/IHRCache;->delete(Ljava/lang/String;)V

    .line 137
    add-int/lit8 v5, v5, 0x1

    .line 130
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 141
    .end local v4    # "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    move v0, v6

    goto :goto_3

    .line 143
    :cond_6
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .line 144
    .restart local v4    # "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getGUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7

    .line 145
    add-int/lit8 v5, v5, 0x1

    .line 142
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method


# virtual methods
.method public archiveDownload(Lcom/clearchannel/iheartradio/model/IHRPremiumItem;ZLjava/lang/String;)I
    .locals 6
    .param p1, "inItem"    # Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    .param p2, "inPauseAlreadyDownloading"    # Z
    .param p3, "inSite"    # Ljava/lang/String;

    .prologue
    .line 453
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRCache;->shared()Lcom/clearchannel/iheartradio/model/IHRCache;

    move-result-object v0

    .line 454
    .local v0, "cache":Lcom/clearchannel/iheartradio/model/IHRCache;
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->archiveURL(Lcom/clearchannel/iheartradio/model/IHRPremiumItem;)Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/clearchannel/iheartradio/model/IHRCache;->stateForFileWithURL(Ljava/lang/String;)I

    move-result v1

    .line 460
    .local v1, "result":I
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRCache;->available()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 461
    packed-switch v1, :pswitch_data_0

    .line 472
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 462
    :pswitch_1
    const/4 v3, 0x2

    const-string v4, "archive"

    invoke-virtual {v0, v2, v3, v4, p3}, Lcom/clearchannel/iheartradio/model/IHRCache;->cacheAudioWithURL(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :pswitch_2
    invoke-virtual {v0, v2}, Lcom/clearchannel/iheartradio/model/IHRCache;->unpause(Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :pswitch_3
    if-eqz p2, :cond_0

    invoke-virtual {v0, v2}, Lcom/clearchannel/iheartradio/model/IHRCache;->pause(Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_1
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->context:Landroid/content/Context;

    const v5, 0x7f070010

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public archiveProgress(Lcom/clearchannel/iheartradio/model/IHRPremiumItem;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .locals 2
    .param p1, "inItem"    # Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->archiveURL(Lcom/clearchannel/iheartradio/model/IHRPremiumItem;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRCache;->shared()Lcom/clearchannel/iheartradio/model/IHRCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/clearchannel/iheartradio/model/IHRCache;->progressForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v1

    goto :goto_0
.end method

.method public archiveRemove(Lcom/clearchannel/iheartradio/model/IHRPremiumItem;)V
    .locals 1
    .param p1, "inItem"    # Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .prologue
    .line 482
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRCache;->shared()Lcom/clearchannel/iheartradio/model/IHRCache;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->archiveUnmapFromCache(Lcom/clearchannel/iheartradio/model/IHRPremiumItem;Lcom/clearchannel/iheartradio/model/IHRCache;)V

    .line 483
    return-void
.end method

.method public archiveRemoveGroup(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 1
    .param p1, "inItems"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    .line 495
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->archiveRemoveGroup(Ljava/util/Collection;)V

    .line 496
    return-void
.end method

.method public archiveRemoveGroup(Ljava/util/Collection;)V
    .locals 4
    .param p1, "inItems"    # Ljava/util/Collection;

    .prologue
    .line 487
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRCache;->shared()Lcom/clearchannel/iheartradio/model/IHRCache;

    move-result-object v0

    .line 489
    .local v0, "cache":Lcom/clearchannel/iheartradio/model/IHRCache;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 492
    return-void

    .line 489
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 490
    .local v1, "item":Ljava/lang/Object;
    check-cast v1, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .end local v1    # "item":Ljava/lang/Object;
    invoke-virtual {p0, v1, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->archiveUnmapFromCache(Lcom/clearchannel/iheartradio/model/IHRPremiumItem;Lcom/clearchannel/iheartradio/model/IHRCache;)V

    goto :goto_0
.end method

.method public archiveRemoveSite(Ljava/lang/String;)V
    .locals 1
    .param p1, "inSite"    # Ljava/lang/String;

    .prologue
    .line 499
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->premiumItems(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v0

    .line 501
    .local v0, "items":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->archiveRemoveGroup(Ljava/util/Collection;)V

    .line 502
    :cond_0
    return-void
.end method

.method public archiveURL(Lcom/clearchannel/iheartradio/model/IHRPremiumItem;)Ljava/lang/String;
    .locals 1
    .param p1, "inItem"    # Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .prologue
    .line 441
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getLink()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public archiveUnmapFromCache(Lcom/clearchannel/iheartradio/model/IHRPremiumItem;Lcom/clearchannel/iheartradio/model/IHRCache;)V
    .locals 2
    .param p1, "inItem"    # Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    .param p2, "inCache"    # Lcom/clearchannel/iheartradio/model/IHRCache;

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->archiveURL(Lcom/clearchannel/iheartradio/model/IHRPremiumItem;)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lcom/clearchannel/iheartradio/model/IHRCache;->delete(Ljava/lang/String;)V

    .line 479
    :cond_0
    return-void
.end method

.method public channel(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    .locals 1
    .param p1, "inSite"    # Ljava/lang/String;

    .prologue
    .line 353
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->searchForChannel(Ljava/lang/String;I)Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    move-result-object v0

    return-object v0
.end method

.method public channelWithName(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    .locals 1
    .param p1, "inName"    # Ljava/lang/String;

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->searchForChannel(Ljava/lang/String;I)Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    move-result-object v0

    return-object v0
.end method

.method public channels()Lcom/clearchannel/iheartradio/android/model/IHRVector;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_channels:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    return-object v0
.end method

.method public channels(Z)Lcom/clearchannel/iheartradio/android/model/IHRVector;
    .locals 1
    .param p1, "inForOffline"    # Z

    .prologue
    .line 328
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->channelsForOffline()Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->channels()Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v0

    goto :goto_0
.end method

.method public channelsForOffline()Lcom/clearchannel/iheartradio/android/model/IHRVector;
    .locals 8

    .prologue
    .line 310
    new-instance v4, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v4}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 311
    .local v4, "result":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->channels()Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v6

    .line 312
    .local v6, "source":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    if-nez v6, :cond_0

    const/4 v7, 0x0

    move v1, v7

    .line 313
    .local v1, "count":I
    :goto_0
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->shared()Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;

    move-result-object v2

    .line 315
    .local v2, "credentials":Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    if-lt v3, v1, :cond_1

    .line 324
    return-object v4

    .line 312
    .end local v1    # "count":I
    .end local v2    # "credentials":Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
    .end local v3    # "index":I
    :cond_0
    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v7

    move v1, v7

    goto :goto_0

    .line 316
    .restart local v1    # "count":I
    .restart local v2    # "credentials":Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
    .restart local v3    # "index":I
    :cond_1
    invoke-virtual {v6, v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 317
    .local v0, "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v5

    .line 319
    .local v5, "site":Ljava/lang/String;
    invoke-virtual {v2, v5}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->hasAuthenticated(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v7}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->hasArchives(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 320
    invoke-virtual {v4, v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public fetch(Ljava/lang/String;Z)V
    .locals 13
    .param p1, "inVersion"    # Ljava/lang/String;
    .param p2, "inAllowNetwork"    # Z

    .prologue
    .line 203
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->shared()Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;

    move-result-object v9

    .line 204
    .local v9, "credentials":Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRCache;->shared()Lcom/clearchannel/iheartradio/model/IHRCache;

    move-result-object v0

    .line 205
    .local v0, "cache":Lcom/clearchannel/iheartradio/model/IHRCache;
    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_channels:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 214
    .local v7, "channels":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    if-nez v7, :cond_3

    .line 215
    const-string v4, "premium"

    .line 216
    .local v4, "identifier":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://www.iheartradio.com/cc-common/iphone/config/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/clearchannel/iheartradio/model/IHRXML;->sConfigFilesDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".php"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRCache;->dataForURL(Ljava/lang/String;)[B

    move-result-object v12

    .line 219
    .local v12, "xml":[B
    if-eqz v12, :cond_0

    invoke-virtual {p0, v12}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->parseChannelsXML([B)V

    .line 221
    :cond_0
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_version:Ljava/lang/String;

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    .line 222
    const-wide v2, 0x4948525056657273L    # 1.0847768592816878E45

    invoke-static {v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->getString(J)Ljava/lang/String;

    move-result-object v11

    .line 224
    .local v11, "version":Ljava/lang/String;
    if-eqz v11, :cond_1

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 225
    :cond_1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_version:Ljava/lang/String;

    .line 227
    const/16 v2, 0x38

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/clearchannel/iheartradio/model/IHRCache;->cacheFileWithURL(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v11    # "version":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_channels:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 234
    .end local v1    # "url":Ljava/lang/String;
    .end local v4    # "identifier":Ljava/lang/String;
    .end local v12    # "xml":[B
    :cond_3
    if-nez v7, :cond_4

    const/4 v2, 0x0

    move v8, v2

    .line 236
    .local v8, "count":I
    :goto_0
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_1
    if-lt v10, v8, :cond_5

    .line 255
    return-void

    .line 234
    .end local v8    # "count":I
    .end local v10    # "index":I
    :cond_4
    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v2

    move v8, v2

    goto :goto_0

    .line 237
    .restart local v8    # "count":I
    .restart local v10    # "index":I
    :cond_5
    invoke-virtual {v7, v10}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 238
    .local v6, "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v5

    .line 239
    .local v5, "site":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getPodcastURL()Ljava/lang/String;

    move-result-object v1

    .line 241
    .restart local v1    # "url":Ljava/lang/String;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "premium_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 244
    .restart local v4    # "identifier":Ljava/lang/String;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_archives:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_archives:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v2, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    .line 245
    :cond_6
    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRCache;->dataForURL(Ljava/lang/String;)[B

    move-result-object v12

    .line 247
    .restart local v12    # "xml":[B
    if-eqz v12, :cond_7

    invoke-virtual {p0, v5, v12}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->parseArchivesXML(Ljava/lang/String;[B)V

    .line 250
    .end local v12    # "xml":[B
    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {v9, v5}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->hasAuthenticated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 251
    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/clearchannel/iheartradio/model/IHRCache;->updateForURL(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    .line 236
    .end local v4    # "identifier":Ljava/lang/String;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method public hasArchive(Lcom/clearchannel/iheartradio/model/IHRPremiumItem;)Z
    .locals 2
    .param p1, "inItem"    # Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .prologue
    .line 435
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->archiveURL(Lcom/clearchannel/iheartradio/model/IHRPremiumItem;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRCache;->shared()Lcom/clearchannel/iheartradio/model/IHRCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/clearchannel/iheartradio/model/IHRCache;->stateForFileWithURL(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasArchives(Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "inSite"    # Ljava/lang/String;
    .param p2, "inOnlyCompleted"    # Z

    .prologue
    .line 387
    const/4 v5, 0x0

    .line 388
    .local v5, "result":Z
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->premiumItems(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v4

    .line 389
    .local v4, "items":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRCache;->shared()Lcom/clearchannel/iheartradio/model/IHRCache;

    move-result-object v0

    .line 392
    .local v0, "cache":Lcom/clearchannel/iheartradio/model/IHRCache;
    if-nez v4, :cond_0

    const/4 v8, 0x0

    move v1, v8

    .line 395
    .local v1, "count":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-lt v2, v1, :cond_1

    .line 409
    :goto_2
    return v5

    .line 392
    .end local v1    # "count":I
    .end local v2    # "index":I
    :cond_0
    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v8

    move v1, v8

    goto :goto_0

    .line 396
    .restart local v1    # "count":I
    .restart local v2    # "index":I
    :cond_1
    invoke-virtual {v4, v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .line 397
    .local v3, "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getLink()Ljava/lang/String;

    move-result-object v7

    .line 399
    .local v7, "url":Ljava/lang/String;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_4

    .line 400
    invoke-virtual {v0, v7}, Lcom/clearchannel/iheartradio/model/IHRCache;->stateForFileWithURL(Ljava/lang/String;)I

    move-result v6

    .line 402
    .local v6, "state":I
    if-eqz p2, :cond_3

    const/4 v8, 0x2

    if-ne v8, v6, :cond_4

    .line 403
    :cond_2
    const/4 v5, 0x1

    .line 404
    goto :goto_2

    .line 402
    :cond_3
    if-nez v6, :cond_2

    .line 395
    .end local v6    # "state":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public hasArchives(Z)Z
    .locals 7
    .param p1, "inOnlyCompleted"    # Z

    .prologue
    .line 413
    const/4 v4, 0x0

    .line 416
    .local v4, "result":Z
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_channels:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 419
    .local v1, "channels":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    if-nez v1, :cond_0

    const/4 v6, 0x0

    move v2, v6

    .line 421
    .local v2, "count":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    if-lt v3, v2, :cond_1

    .line 431
    :goto_2
    return v4

    .line 419
    .end local v2    # "count":I
    .end local v3    # "index":I
    :cond_0
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v6

    move v2, v6

    goto :goto_0

    .line 422
    .restart local v2    # "count":I
    .restart local v3    # "index":I
    :cond_1
    invoke-virtual {v1, v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 423
    .local v0, "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v5

    .line 425
    .local v5, "site":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {p0, v5, p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->hasArchives(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 426
    const/4 v4, 0x1

    .line 427
    goto :goto_2

    .line 421
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public listen(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 5
    .param p1, "inName"    # Ljava/lang/String;
    .param p2, "inDetails"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    const/16 v4, 0x8

    .line 285
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v3, "error"

    invoke-virtual {p2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 286
    const-string v3, "IHRCacheResults"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    const-string v3, "identifier"

    invoke-virtual {p2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 288
    .local v1, "identifier":Ljava/lang/String;
    const-string v3, "url"

    invoke-virtual {p2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 292
    .local v2, "url":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 293
    const-string v3, "premium"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 294
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRCache;->shared()Lcom/clearchannel/iheartradio/model/IHRCache;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/clearchannel/iheartradio/model/IHRCache;->dataForURL(Ljava/lang/String;)[B

    move-result-object v0

    .line 296
    .local v0, "data":[B
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->parseChannelsXML([B)V

    .line 303
    .end local v0    # "data":[B
    .end local v1    # "identifier":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 297
    .restart local v1    # "identifier":Ljava/lang/String;
    .restart local v2    # "url":Ljava/lang/String;
    :cond_1
    const-string v3, "premium_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 298
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRCache;->shared()Lcom/clearchannel/iheartradio/model/IHRCache;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/clearchannel/iheartradio/model/IHRCache;->dataForURL(Ljava/lang/String;)[B

    move-result-object v0

    .line 300
    .restart local v0    # "data":[B
    if-eqz v0, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->parseArchivesXML(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public mergeLists(Ljava/util/List;Ljava/util/List;)I
    .locals 27
    .param p1, "inNew"    # Ljava/util/List;
    .param p2, "inOld"    # Ljava/util/List;

    .prologue
    .line 40
    const/16 v17, 0x0

    .line 43
    .local v17, "result":I
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRCache;->shared()Lcom/clearchannel/iheartradio/model/IHRCache;

    move-result-object v5

    .line 44
    .local v5, "cache":Lcom/clearchannel/iheartradio/model/IHRCache;
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->shared()Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;

    move-result-object v8

    .line 45
    .local v8, "credentials":Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
    new-instance v18, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct/range {v18 .. v18}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 50
    .local v18, "reverse":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez p1, :cond_0

    const/16 v23, 0x0

    move/from16 v7, v23

    .line 52
    .local v7, "count":I
    :goto_0
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_1
    if-lt v9, v7, :cond_1

    .line 66
    if-nez p2, :cond_3

    const/16 v23, 0x0

    move/from16 v7, v23

    .line 68
    :goto_2
    const/4 v9, 0x0

    .end local p1    # "inNew":Ljava/util/List;
    :goto_3
    if-lt v9, v7, :cond_4

    .line 111
    return v17

    .line 50
    .end local v7    # "count":I
    .end local v9    # "index":I
    .restart local p1    # "inNew":Ljava/util/List;
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v7, v23

    goto :goto_0

    .line 53
    .restart local v7    # "count":I
    .restart local v9    # "index":I
    :cond_1
    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 54
    .local v12, "now":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    invoke-virtual {v12}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v20

    .line 55
    .local v20, "site":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {v12}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->trialUsername()Ljava/lang/String;

    move-result-object v22

    .line 58
    .local v22, "username":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->trialPassword()Ljava/lang/String;

    move-result-object v16

    .line 60
    .local v16, "password":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_2

    invoke-virtual {v12}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->isExpired()Z

    move-result v23

    if-nez v23, :cond_2

    .line 62
    invoke-virtual {v12}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->trialExpiring()Ljava/lang/String;

    move-result-object v23

    move-object v0, v8

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v16

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->propose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 66
    .end local v12    # "now":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    .end local v16    # "password":Ljava/lang/String;
    .end local v20    # "site":Ljava/lang/String;
    .end local v22    # "username":Ljava/lang/String;
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v7, v23

    goto :goto_2

    .line 69
    .end local p1    # "inNew":Ljava/util/List;
    :cond_4
    move-object/from16 v0, p2

    move v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 70
    .local v13, "old":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    invoke-virtual {v13}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v20

    .line 71
    .restart local v20    # "site":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 73
    .local v6, "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    invoke-virtual {v13}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getLogoURL()Ljava/lang/String;

    move-result-object v21

    .line 74
    .local v21, "url":Ljava/lang/String;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getLogoURL()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 75
    :cond_5
    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRCache;->delete(Ljava/lang/String;)V

    .line 78
    :cond_6
    invoke-virtual {v13}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getPodcastURL()Ljava/lang/String;

    move-result-object v21

    .line 79
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getPodcastURL()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_9

    .line 80
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_archives:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-object/from16 v23, v0

    if-nez v23, :cond_b

    const/16 v23, 0x0

    move-object/from16 v19, v23

    .line 82
    .local v19, "rss":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    :goto_4
    add-int/lit8 v17, v17, 0x1

    .line 84
    if-eqz v19, :cond_8

    .line 85
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->mergeRSS(Ljava/util/List;Ljava/util/List;)I

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_archives:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_8
    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRCache;->delete(Ljava/lang/String;)V

    .line 92
    .end local v19    # "rss":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    :cond_9
    if-nez v6, :cond_c

    .line 94
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->shared()Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->propose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_a
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 80
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_archives:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-object/from16 v19, p1

    goto :goto_4

    .line 96
    :cond_c
    invoke-virtual {v13}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->trialUsername()Ljava/lang/String;

    move-result-object v15

    .line 97
    .local v15, "old_username":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->trialPassword()Ljava/lang/String;

    move-result-object v14

    .line 98
    .local v14, "old_password":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->trialUsername()Ljava/lang/String;

    move-result-object v11

    .line 99
    .local v11, "new_username":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->trialPassword()Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, "new_password":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_a

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_a

    .line 102
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    .line 103
    :cond_d
    move-object v0, v8

    move-object/from16 v1, v20

    move-object v2, v15

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->isUsing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->isExpired()Z

    move-result v23

    if-nez v23, :cond_a

    .line 104
    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->trialExpiring()Ljava/lang/String;

    move-result-object v23

    move-object v0, v8

    move-object/from16 v1, v20

    move-object v2, v11

    move-object v3, v10

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->propose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public onCreate(Ljava/lang/Object;)V
    .locals 0
    .param p1, "inOwner"    # Ljava/lang/Object;

    .prologue
    .line 525
    return-void
.end method

.method public onDestroy(Ljava/lang/Object;)V
    .locals 0
    .param p1, "inOwner"    # Ljava/lang/Object;

    .prologue
    .line 526
    return-void
.end method

.method public parseArchivesXML(Ljava/lang/String;[B)V
    .locals 6
    .param p1, "inSite"    # Ljava/lang/String;
    .param p2, "inXML"    # [B

    .prologue
    .line 179
    invoke-static {p2}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->parseXML([B)Ljava/util/List;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 180
    .local v0, "archives":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_archives:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    move-object v2, v3

    .line 181
    .local v2, "previous":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    :goto_0
    invoke-static {v0, v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->mergeRSS(Ljava/util/List;Ljava/util/List;)I

    move-result v1

    .line 183
    .local v1, "changes":I
    if-nez v0, :cond_4

    .line 184
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_archives:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_archives:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v3, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-lez v1, :cond_2

    .line 193
    :cond_1
    sget-object v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-eqz v3, :cond_2

    .line 194
    sget-object v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "premium_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->notifyClient(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 200
    :cond_2
    return-void

    .line 180
    .end local v1    # "changes":I
    .end local v2    # "previous":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    :cond_3
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_archives:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v3, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-object v2, v3

    goto :goto_0

    .line 186
    .restart local v1    # "changes":I
    .restart local v2    # "previous":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    :cond_4
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_archives:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v3, :cond_5

    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_archives:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 188
    :cond_5
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_archives:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v3, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public parseChannelsXML([B)V
    .locals 6
    .param p1, "inXML"    # [B

    .prologue
    const/4 v5, 0x0

    .line 154
    if-nez p1, :cond_1

    move-object v0, v5

    .line 155
    .local v0, "channels":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    :goto_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_channels:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 157
    .local v1, "previous":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->mergeLists(Ljava/util/List;Ljava/util/List;)I

    .line 159
    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_channels:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 161
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_version:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 163
    sget-object v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    const-string v3, "PremiumVersion"

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_version:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesPut(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    iput-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_version:Ljava/lang/String;

    .line 172
    :cond_0
    sget-object v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    const-string v3, "premium"

    new-instance v4, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->notifyClient(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 176
    return-void

    .line 154
    .end local v0    # "channels":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    .end local v1    # "previous":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    :cond_1
    invoke-static {p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->parseXML([B)Ljava/util/List;

    move-result-object v2

    check-cast v2, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-object v0, v2

    goto :goto_0
.end method

.method public premiumItems(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRVector;
    .locals 1
    .param p1, "inSite"    # Ljava/lang/String;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_archives:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;
    :goto_0
    return-object v0

    .restart local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_archives:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;
    check-cast p0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-object v0, p0

    goto :goto_0
.end method

.method public premiumItems(Ljava/lang/String;Z)Lcom/clearchannel/iheartradio/android/model/IHRVector;
    .locals 1
    .param p1, "inSite"    # Ljava/lang/String;
    .param p2, "inForOffline"    # Z

    .prologue
    .line 383
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->premiumItemsForOffline(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->premiumItems(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v0

    goto :goto_0
.end method

.method public premiumItemsForOffline(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRVector;
    .locals 9
    .param p1, "inSite"    # Ljava/lang/String;

    .prologue
    .line 365
    new-instance v4, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v4}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 366
    .local v4, "result":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->premiumItems(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v5

    .line 367
    .local v5, "source":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRCache;->shared()Lcom/clearchannel/iheartradio/model/IHRCache;

    move-result-object v0

    .line 368
    .local v0, "cache":Lcom/clearchannel/iheartradio/model/IHRCache;
    if-nez v5, :cond_0

    const/4 v7, 0x0

    move v1, v7

    .line 370
    .local v1, "count":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-lt v2, v1, :cond_1

    .line 379
    return-object v4

    .line 368
    .end local v1    # "count":I
    .end local v2    # "index":I
    :cond_0
    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v7

    move v1, v7

    goto :goto_0

    .line 371
    .restart local v1    # "count":I
    .restart local v2    # "index":I
    :cond_1
    invoke-virtual {v5, v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .line 372
    .local v3, "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getLink()Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, "url":Ljava/lang/String;
    if-eqz v6, :cond_2

    const/4 v7, 0x2

    invoke-virtual {v0, v6}, Lcom/clearchannel/iheartradio/model/IHRCache;->stateForFileWithURL(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 375
    invoke-virtual {v4, v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public refresh(Ljava/lang/String;J)V
    .locals 11
    .param p1, "inSite"    # Ljava/lang/String;
    .param p2, "inMaximumInterval"    # J

    .prologue
    .line 258
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->shared()Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;

    move-result-object v9

    .line 259
    .local v9, "credentials":Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRCache;->shared()Lcom/clearchannel/iheartradio/model/IHRCache;

    move-result-object v0

    .line 260
    .local v0, "cache":Lcom/clearchannel/iheartradio/model/IHRCache;
    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_channels:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 268
    .local v7, "channels":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    if-nez v7, :cond_0

    const/4 v2, 0x0

    move v8, v2

    .line 270
    .local v8, "count":I
    :goto_0
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_1
    if-lt v10, v8, :cond_1

    .line 282
    return-void

    .line 268
    .end local v8    # "count":I
    .end local v10    # "index":I
    :cond_0
    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v2

    move v8, v2

    goto :goto_0

    .line 271
    .restart local v8    # "count":I
    .restart local v10    # "index":I
    :cond_1
    invoke-virtual {v7, v10}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 272
    .local v6, "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v5

    .line 273
    .local v5, "site":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getPodcastURL()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "url":Ljava/lang/String;
    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 270
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 276
    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {v9, v5}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->hasAuthenticated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "premium_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "identifier":Ljava/lang/String;
    move-wide v2, p2

    .line 280
    invoke-virtual/range {v0 .. v5}, Lcom/clearchannel/iheartradio/model/IHRCache;->updateForURL(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    goto :goto_2
.end method

.method public searchForChannel(Ljava/lang/String;I)Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    .locals 7
    .param p1, "inValue"    # Ljava/lang/String;
    .param p2, "inIndex"    # I

    .prologue
    .line 332
    const/4 v4, 0x0

    .line 334
    .local v4, "result":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannels;->_channels:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 337
    .local v1, "channels":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    if-nez v1, :cond_0

    const/4 v6, 0x0

    move v2, v6

    .line 339
    .local v2, "count":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    if-lt v3, v2, :cond_1

    .line 349
    :goto_2
    return-object v4

    .line 337
    .end local v2    # "count":I
    .end local v3    # "index":I
    :cond_0
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v6

    move v2, v6

    goto :goto_0

    .line 340
    .restart local v2    # "count":I
    .restart local v3    # "index":I
    :cond_1
    invoke-virtual {v1, v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 341
    .local v0, "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    invoke-virtual {v0, p2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 343
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 344
    move-object v4, v0

    .line 345
    goto :goto_2

    .line 339
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
