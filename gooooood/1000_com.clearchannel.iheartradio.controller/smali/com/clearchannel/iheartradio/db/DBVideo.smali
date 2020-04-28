.class public Lcom/clearchannel/iheartradio/db/DBVideo;
.super Lcom/clearchannel/iheartradio/db/DBBase;
.source "DBVideo.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting:[I = null

.field private static final INSERT_VIDEO:Ljava/lang/String; = "insert into video(media_id, name, description, videourl, thumbnail_url_50x50, thumbnail_url_85x85) values (?,?,?,?,?,?)"

.field public static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_MEDIAID:Ljava/lang/String; = "media_id"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_VIDEOCALLLETTERS:Ljava/lang/String; = "call_letters"

.field public static final KEY_VIDEOTHUMBNAIL50:Ljava/lang/String; = "thumbnail_url_50x50"

.field public static final KEY_VIDEOTHUMBNAIL80:Ljava/lang/String; = "thumbnail_url_85x85"

.field public static final KEY_VIDEOURL:Ljava/lang/String; = "videourl"

.field public static final KEY_VIDEOURLLOW:Ljava/lang/String; = "video_url_low_bandwitch"


# instance fields
.field private insertVideoStmt:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/clearchannel/iheartradio/db/DBVideo;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->values()[Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ASC:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->DESC:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->FREQ:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/clearchannel/iheartradio/db/DBVideo;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/db/DBBase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 31
    return-void
.end method


# virtual methods
.method public deleteAllVideos()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 38
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBVideo;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "video"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method public getCursorAllVideos(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    .locals 10
    .param p1, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v8, 0x0

    .line 127
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/clearchannel/iheartradio/db/DBVideo;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    if-eqz v8, :cond_0

    .line 147
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 154
    :cond_0
    return-object v8

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBVideo;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "video"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "videourl"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "video_url_low_bandwidth"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "call_letters"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "media_id"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "thumbnail_url_50x50"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 132
    const-string v4, "thumbnail_url_85x85"

    aput-object v4, v2, v3

    .line 133
    const-string v3, "videourl is not null and trim(videourl) not like \'\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name asc"

    .line 131
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 135
    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBVideo;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "video"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "videourl"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "video_url_low_bandwidth"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "call_letters"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "media_id"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "thumbnail_url_50x50"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 140
    const-string v4, "thumbnail_url_85x85"

    aput-object v4, v2, v3

    const-string v3, "videourl is not null and trim(videourl) not like \'\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name desc"

    .line 139
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .line 150
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 151
    .local v9, "e":Ljava/lang/Exception;
    new-instance v0, Landroid/database/SQLException;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insertVideo(Lcom/clearchannel/iheartradio/model/IHRVideo;Z)J
    .locals 4
    .param p1, "video"    # Lcom/clearchannel/iheartradio/model/IHRVideo;
    .param p2, "prepare"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 42
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DBVideo;->prepareInsertVideo()V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBVideo;->insertVideoStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRVideo;->getMediaId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 45
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBVideo;->insertVideoStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRVideo;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBVideo;->insertVideoStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRVideo;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, ""

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBVideo;->insertVideoStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRVideo;->getVideoURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBVideo;->insertVideoStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRVideo;->getThumbnail50()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBVideo;->insertVideoStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x6

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRVideo;->getThumbnail85()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBVideo;->insertVideoStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRVideo;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRVideo;->getDescription()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public prepareInsertVideo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBVideo;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "insert into video(media_id, name, description, videourl, thumbnail_url_50x50, thumbnail_url_85x85) values (?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBVideo;->insertVideoStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 35
    return-void
.end method

.method public selectAllVideos()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRVideo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRVideo;>;"
    const/4 v8, 0x0

    .line 59
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBVideo;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "video"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "media_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "videourl"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "thumbnail_url_50x50 "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "thumbnail_url_85x85"

    aput-object v4, v2, v3

    .line 60
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name desc"

    .line 59
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 65
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    new-instance v11, Lcom/clearchannel/iheartradio/model/IHRVideo;

    invoke-direct {v11}, Lcom/clearchannel/iheartradio/model/IHRVideo;-><init>()V

    .line 68
    .local v11, "video":Lcom/clearchannel/iheartradio/model/IHRVideo;
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRVideo;->setMediaId(J)V

    .line 69
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/clearchannel/iheartradio/model/IHRVideo;->setName(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/clearchannel/iheartradio/model/IHRVideo;->setDescription(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/clearchannel/iheartradio/model/IHRVideo;->setVideoURL(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/clearchannel/iheartradio/model/IHRVideo;->setThumbnail50(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/clearchannel/iheartradio/model/IHRVideo;->setThumbnail85(Ljava/lang/String;)V

    .line 74
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 66
    if-nez v0, :cond_0

    .line 80
    .end local v11    # "video":Lcom/clearchannel/iheartradio/model/IHRVideo;
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_2
    return-object v10

    .line 61
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 62
    .local v9, "e":Ljava/lang/Exception;
    new-instance v0, Landroid/database/SQLException;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 78
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v0, Landroid/database/SQLException;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 80
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 81
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_3
    throw v0
.end method

.method public selectVideoByMediaId(J)Lcom/clearchannel/iheartradio/model/IHRVideo;
    .locals 7
    .param p1, "mediaId"    # J

    .prologue
    .line 90
    const/4 v3, 0x0

    .line 91
    .local v3, "video":Lcom/clearchannel/iheartradio/model/IHRVideo;
    const/4 v0, 0x0

    .line 92
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "select media_id, name, description, videourl, thumbnail_url_50x50, thumbnail_url_85x85 from video where media_id = \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "select":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBVideo;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    new-instance v4, Lcom/clearchannel/iheartradio/model/IHRVideo;

    invoke-direct {v4}, Lcom/clearchannel/iheartradio/model/IHRVideo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .end local v3    # "video":Lcom/clearchannel/iheartradio/model/IHRVideo;
    .local v4, "video":Lcom/clearchannel/iheartradio/model/IHRVideo;
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/clearchannel/iheartradio/model/IHRVideo;->setMediaId(J)V

    .line 98
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/model/IHRVideo;->setName(Ljava/lang/String;)V

    .line 99
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/model/IHRVideo;->setDescription(Ljava/lang/String;)V

    .line 100
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/model/IHRVideo;->setVideoURL(Ljava/lang/String;)V

    .line 101
    const/4 v5, 0x4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/model/IHRVideo;->setThumbnail50(Ljava/lang/String;)V

    .line 102
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/model/IHRVideo;->setThumbnail85(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 107
    .end local v4    # "video":Lcom/clearchannel/iheartradio/model/IHRVideo;
    .restart local v3    # "video":Lcom/clearchannel/iheartradio/model/IHRVideo;
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 108
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_1
    return-object v3

    .line 104
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    new-instance v5, Landroid/database/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 107
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 108
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_2
    throw v5

    .line 106
    .end local v3    # "video":Lcom/clearchannel/iheartradio/model/IHRVideo;
    .restart local v4    # "video":Lcom/clearchannel/iheartradio/model/IHRVideo;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "video":Lcom/clearchannel/iheartradio/model/IHRVideo;
    .restart local v3    # "video":Lcom/clearchannel/iheartradio/model/IHRVideo;
    goto :goto_1

    .line 104
    .end local v3    # "video":Lcom/clearchannel/iheartradio/model/IHRVideo;
    .restart local v4    # "video":Lcom/clearchannel/iheartradio/model/IHRVideo;
    :catch_1
    move-exception v5

    move-object v1, v5

    move-object v3, v4

    .end local v4    # "video":Lcom/clearchannel/iheartradio/model/IHRVideo;
    .restart local v3    # "video":Lcom/clearchannel/iheartradio/model/IHRVideo;
    goto :goto_0
.end method
