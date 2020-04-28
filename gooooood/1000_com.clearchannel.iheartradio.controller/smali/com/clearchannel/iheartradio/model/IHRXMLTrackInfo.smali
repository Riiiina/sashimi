.class public Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;
.super Lcom/clearchannel/iheartradio/model/IHRXMLParser;
.source "IHRXMLTrackInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final kTrackInfoCGIBaseURL:Ljava/lang/String;


# instance fields
.field public mBuyURL:Ljava/lang/String;

.field public mCoverArt:Landroid/graphics/Bitmap;

.field public mCoverArtURL:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field public mLyricsURL:Ljava/lang/String;

.field public mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.iheartradio.com/cc-common/iphone/config/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/clearchannel/iheartradio/model/IHRXML;->sConfigFilesDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iphoneTrackXML.php?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->kTrackInfoCGIBaseURL:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "metadata"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mHandler:Landroid/os/Handler;

    .line 27
    iput-object p2, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 29
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IHRXMLTrackInfo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "track"

    invoke-virtual {p2, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 30
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v0, "buy_url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mContents:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mBuyURL:Ljava/lang/String;

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const-string v0, "cover_art"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mContents:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mCoverArtURL:Ljava/lang/String;

    goto :goto_0

    .line 38
    :cond_2
    const-string v0, "lyrics_url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mContents:Ljava/lang/String;

    const-string v1, "tid="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mContents:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mLyricsURL:Ljava/lang/String;

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 48
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;-><init>()V

    .line 50
    .local v2, "post":Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parameters(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;)V

    .line 52
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v5, "amgArtistId"

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "amgartistid"

    invoke-virtual {v2, v4, v3}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v5, "amgTrackId"

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "value":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, "amgtrackid"

    invoke-virtual {v2, v4, v3}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v5, "artist"

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "value":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v4, "aname"

    invoke-virtual {v2, v4, v3}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_2
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v5, "callletters"

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "value":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v4, "callletters"

    invoke-virtual {v2, v4, v3}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_3
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v5, "cartcutId"

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "value":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v4, "cartcutid"

    invoke-virtual {v2, v4, v3}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_4
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v5, "itunesTrackId"

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "value":Ljava/lang/String;
    if-eqz v3, :cond_5

    const-string v4, "itunesid"

    invoke-virtual {v2, v4, v3}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_5
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v5, "lyricsId"

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "value":Ljava/lang/String;
    if-eqz v3, :cond_6

    const-string v4, "lyricsid"

    invoke-virtual {v2, v4, v3}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_6
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v5, "MediaBaseId"

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "value":Ljava/lang/String;
    if-eqz v3, :cond_7

    const-string v4, "mediabaseid"

    invoke-virtual {v2, v4, v3}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_7
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v5, "song_spot"

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "value":Ljava/lang/String;
    if-eqz v3, :cond_8

    const-string v4, "songspot"

    invoke-virtual {v2, v4, v3}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_8
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v5, "stationid"

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "value":Ljava/lang/String;
    if-eqz v3, :cond_9

    const-string v4, "stationid"

    invoke-virtual {v2, v4, v3}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_9
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v5, "track"

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "value":Ljava/lang/String;
    if-eqz v3, :cond_a

    const-string v4, "tname"

    invoke-virtual {v2, v4, v3}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_a
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v5, "thumbplayId"

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "value":Ljava/lang/String;
    if-eqz v3, :cond_b

    const-string v4, "thumbplayid"

    invoke-virtual {v2, v4, v3}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_b
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "iphoneTrackXML"

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->baseURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->fetchSynchronous(Ljava/lang/String;)[B

    move-result-object v0

    .line 72
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->parse([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mLyricsURL:Ljava/lang/String;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mLyricsURL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mMetadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v5, "lyricsURL"

    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mLyricsURL:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_c
    :try_start_1
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mCoverArtURL:Ljava/lang/String;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mCoverArtURL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d

    .line 81
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mCoverArtURL:Ljava/lang/String;

    invoke-static {v4}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->fetchSynchronous(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_d

    .line 82
    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mCoverArt:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    :cond_d
    :goto_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRXMLTrackInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    .end local v0    # "data":[B
    :goto_1
    return-void

    .line 73
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 85
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "data":[B
    :catch_1
    move-exception v4

    goto :goto_0
.end method
