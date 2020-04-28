.class public Lcom/clearchannel/iheartradio/db/DBFavourite;
.super Lcom/clearchannel/iheartradio/db/DBBase;
.source "DBFavourite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/db/DBFavourite$Song;,
        Lcom/clearchannel/iheartradio/db/DBFavourite$Station;
    }
.end annotation


# static fields
.field public static ESTOffset:J = 0x0L

.field private static final FIND_FAVOURITE_SONG_ID_FROM_MEDIA_ID:Ljava/lang/String; = "select _id from favoritesong where mediaid = ?"

.field private static final FIND_FAVOURITE_STATION_ID_FROM_STATION_ID:Ljava/lang/String; = "select _id from favoritestation where stationid = ?"

.field private static final FIND_LAST_SYNC_TIME_STAMP:Ljava/lang/String; = "SELECT dateadded FROM favoritestation WHERE stationid = -1"

.field private static final INSERT_FAVOURITE_SONG:Ljava/lang/String; = "insert into favoritesong(artist, song, imageuri, mediaid, isactive, dateadded) values (?,?,?,?,?,current_timestamp)"

.field private static final IS_FAVOURITE_SONG_ACTIVE:Ljava/lang/String; = "select isactive from favoritesong where mediaid = ?"

.field private static final IS_FAVOURITE_STATION_ACTIVE:Ljava/lang/String; = "select isactive from favoritestation where stationid = ?"

.field public static final SDF:Ljava/text/SimpleDateFormat;

.field private static final UPDATE_LAST_SYNC_TIME_STAMP:Ljava/lang/String; = "UPDATE favoritestation SET dateadded=current_timestamp WHERE stationid = -1"

.field public static didChanges:Z


# instance fields
.field private findFavouriteStationIdFromStationId:Landroid/database/sqlite/SQLiteStatement;

.field private findSongIdFromMediaId:Landroid/database/sqlite/SQLiteStatement;

.field private insertFavouriteSong:Landroid/database/sqlite/SQLiteStatement;

.field private isFavouriteSongActive:Landroid/database/sqlite/SQLiteStatement;

.field private isFavouriteStationActive:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/clearchannel/iheartradio/db/DBFavourite;->ESTOffset:J

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/clearchannel/iheartradio/db/DBFavourite;->didChanges:Z

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/db/DBFavourite;->SDF:Ljava/text/SimpleDateFormat;

    .line 31
    sget-object v0, Lcom/clearchannel/iheartradio/db/DBFavourite;->SDF:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/db/DBBase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 63
    return-void
.end method

.method private deleteFavoriteStation(J)V
    .locals 3
    .param p1, "stationId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM favoritestation WHERE stationid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 543
    const/4 v0, 0x1

    sput-boolean v0, Lcom/clearchannel/iheartradio/db/DBFavourite;->didChanges:Z

    .line 544
    return-void
.end method

.method private findLastSyncTimeStamp()J
    .locals 8

    .prologue
    .line 512
    const-wide/16 v4, 0x0

    .line 513
    .local v4, "ts":J
    iget-object v6, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "SELECT dateadded FROM favoritestation WHERE stationid = -1"

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 515
    .local v3, "findLastSyncTimeStamp":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "dateTime":Ljava/lang/String;
    sget-object v6, Lcom/clearchannel/iheartradio/db/DBFavourite;->SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 518
    sget-wide v6, Lcom/clearchannel/iheartradio/db/DBFavourite;->ESTOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v4, v6

    .line 527
    .end local v0    # "dateTime":Ljava/lang/String;
    :goto_0
    return-wide v4

    .line 519
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 522
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v6, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "INSERT INTO favoritestation (stationid, dateadded, isactive)  VALUES (-1, current_timestamp, 0)"

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 523
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 524
    .local v2, "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clearAutoplayStation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 287
    const-string v0, "Update favoritestation set autoplay = 0"

    .line 288
    .local v0, "update":Ljava/lang/String;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public deactivateAllFavouriteSongs()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 355
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    const-string v1, "favoritesong"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    const-string v1, " SET isactive = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    const-string v1, ", dateadded = current_timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    const-string v1, "DBFavourite"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deactivated all songs: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public deactivateAllFavouriteStations()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 367
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    const-string v1, "favoritestation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    const-string v1, " SET isactive = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    const-string v1, ", dateadded = current_timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    const-string v1, "DBFavourite"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deactivated all station: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public deactivateAllFavourites()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DBFavourite;->deactivateAllFavouriteSongs()V

    .line 348
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DBFavourite;->deactivateAllFavouriteStations()V

    .line 349
    return-void
.end method

.method public deleteAllFavoritesStations()V
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM favoritestation"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 537
    const-string v0, "DB"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Deleted favs, count="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DBFavourite;->getCursorFavouriteSongs()Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v0, 0x1

    sput-boolean v0, Lcom/clearchannel/iheartradio/db/DBFavourite;->didChanges:Z

    .line 539
    return-void
.end method

.method public findFavouriteSongIDByMediaId(J)J
    .locals 4
    .param p1, "mediaId"    # J

    .prologue
    .line 114
    const-wide/16 v0, -0x1

    .line 115
    .local v0, "id":J
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select _id from favoritesong where mediaid = ?"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->findSongIdFromMediaId:Landroid/database/sqlite/SQLiteStatement;

    .line 116
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->findSongIdFromMediaId:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->findSongIdFromMediaId:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 125
    :goto_0
    return-wide v0

    .line 121
    :catch_0
    move-exception v2

    goto :goto_0

    .line 119
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public findFavouriteStationIDByStationId(J)J
    .locals 4
    .param p1, "stationId"    # J

    .prologue
    .line 247
    const-wide/16 v0, -0x1

    .line 248
    .local v0, "id":J
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select _id from favoritestation where stationid = ?"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->findFavouriteStationIdFromStationId:Landroid/database/sqlite/SQLiteStatement;

    .line 249
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->findFavouriteStationIdFromStationId:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 252
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->findFavouriteStationIdFromStationId:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 259
    :goto_0
    return-wide v0

    .line 255
    :catch_0
    move-exception v2

    goto :goto_0

    .line 253
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public getAutoplayStation()Lcom/clearchannel/iheartradio/model/IHRStation;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v4, 0x0

    .line 306
    .local v4, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    .line 307
    .local v1, "result":[Ljava/lang/String;
    const-string v3, "select callletters, ccstationid, name, ads_gateway_dart_url_v2, description, is_talk, logo_url, station_url, stream_url_rtsp, stream_url_v2 from station left join favoritestation fs on station.ccstationid = fs.stationid where autoplay = 1 and isactive = 1"

    .line 310
    .local v3, "select":Ljava/lang/String;
    const/4 v0, 0x0

    .line 312
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 314
    const/16 v5, 0x15

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    .line 315
    const-string v6, ""

    aput-object v6, v2, v5

    const/4 v5, 0x2

    .line 316
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 317
    const/4 v6, 0x4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x4

    .line 318
    const-string v6, ""

    aput-object v6, v2, v5

    const/4 v5, 0x5

    .line 319
    const-string v6, ""

    aput-object v6, v2, v5

    const/4 v5, 0x6

    .line 320
    const-string v6, ""

    aput-object v6, v2, v5

    const/4 v5, 0x7

    .line 321
    const-string v6, ""

    aput-object v6, v2, v5

    const/16 v5, 0x8

    .line 322
    const-string v6, ""

    aput-object v6, v2, v5

    const/16 v5, 0x9

    .line 323
    const/4 v6, 0x5

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0xa

    .line 324
    const/4 v6, 0x6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0xb

    .line 325
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0xc

    .line 326
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0xd

    .line 327
    const/4 v6, 0x7

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0xe

    .line 328
    const/16 v6, 0x8

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0xf

    .line 329
    const/16 v6, 0x9

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0x10

    .line 330
    const-string v6, ""

    aput-object v6, v2, v5

    const/16 v5, 0x11

    .line 331
    const-string v6, ""

    aput-object v6, v2, v5

    const/16 v5, 0x12

    .line 332
    const-string v6, ""

    aput-object v6, v2, v5

    const/16 v5, 0x13

    .line 333
    const-string v6, ""

    aput-object v6, v2, v5

    const/16 v5, 0x14

    .line 334
    const-string v6, ""

    aput-object v6, v2, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .end local v1    # "result":[Ljava/lang/String;
    .local v2, "result":[Ljava/lang/String;
    :try_start_1
    new-instance v4, Lcom/clearchannel/iheartradio/model/IHRStation;

    .end local v4    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    invoke-direct {v4, v2}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v4    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    move-object v1, v2

    .line 338
    .end local v2    # "result":[Ljava/lang/String;
    .restart local v1    # "result":[Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 339
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 343
    :cond_1
    return-object v4

    .line 337
    :catchall_0
    move-exception v5

    .line 338
    .end local v4    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 339
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 341
    :cond_2
    throw v5

    .line 337
    .end local v1    # "result":[Ljava/lang/String;
    .restart local v2    # "result":[Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "result":[Ljava/lang/String;
    .restart local v1    # "result":[Ljava/lang/String;
    goto :goto_0
.end method

.method public getCursorFavouriteSongs()Landroid/database/Cursor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 496
    const/4 v0, 0x0

    .line 498
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select * from favoritesong where isactive = 1"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 500
    if-eqz v0, :cond_0

    .line 501
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :cond_0
    return-object v0

    .line 503
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 504
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/database/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getCursorFavouriteStations()Landroid/database/Cursor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 477
    const/4 v0, 0x0

    .line 479
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select * from station,favoritestation where favoritestation.isactive = 1 and stationid=ccstationid"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_0

    .line 482
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :cond_0
    return-object v0

    .line 484
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 485
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/database/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getStationSyncXml(I)Ljava/lang/String;
    .locals 13
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/db/DBFavourite;->findLastSyncTimeStamp()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v3, v8, v10

    .line 561
    .local v3, "lastsync":J
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DBFavourite;->selectAllFavouritesStations()Ljava/util/List;

    move-result-object v5

    .line 563
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/db/DBFavourite$Station;>;"
    const-string v2, "<favorite id=\"%s\" action=\"%s\" ts=\"%s\" />"

    .line 565
    .local v2, "format":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "<favorites lastsync=\""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" userid=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 566
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 572
    const-string v8, "</favorites>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 566
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;

    .line 567
    .local v7, "station":Lcom/clearchannel/iheartradio/db/DBFavourite$Station;
    iget-wide v9, v7, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->dateadded:J

    sget-wide v11, Lcom/clearchannel/iheartradio/db/DBFavourite;->ESTOffset:J

    add-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    div-long v0, v9, v11

    .line 568
    .local v0, "datetime":J
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v7, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->callletters:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-boolean v11, v7, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->isactive:Z

    if-eqz v11, :cond_1

    const-string v11, "A"

    :goto_1
    aput-object v11, v9, v10

    const/4 v10, 0x2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v11, "D"

    goto :goto_1
.end method

.method public getStationsToUpdate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    .locals 11
    .param p1, "userID"    # Ljava/lang/String;
    .param p2, "urlService"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 585
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DBFavourite;->selectAllFavouritesStations()Ljava/util/List;

    move-result-object v1

    .line 587
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/db/DBFavourite$Station;>;"
    if-nez v1, :cond_0

    move-object v6, v7

    .line 611
    :goto_0
    return-object v6

    .line 591
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v7

    .line 593
    goto :goto_0

    .line 595
    :cond_1
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 596
    .local v4, "stationsToUpdate":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    move-object v5, p2

    .line 598
    .local v5, "url":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    move-object v6, v4

    .line 611
    goto :goto_0

    .line 598
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;

    .line 600
    .local v3, "station":Lcom/clearchannel/iheartradio/db/DBFavourite$Station;
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;-><init>()V

    .line 601
    .local v2, "result":Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;
    const-string v7, "userid"

    invoke-virtual {v2, v7, p1}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v7, "streamId"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v9, v3, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->stationid:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v7, "action"

    iget-boolean v8, v3, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->isactive:Z

    if-eqz v8, :cond_3

    const-string v8, "A"

    :goto_2
    invoke-virtual {v2, v7, v8}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v7, "apikey"

    const-string v8, "QW5kcm9pZHwzfHhtbHwzLjE="

    invoke-virtual {v2, v7, v8}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "arguments":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x3f

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_4

    const-string v8, "?"

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 607
    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 603
    .end local v0    # "arguments":Ljava/lang/String;
    :cond_3
    const-string v8, "D"

    goto :goto_2

    .line 606
    .restart local v0    # "arguments":Ljava/lang/String;
    :cond_4
    const-string v8, "&"

    goto :goto_3
.end method

.method public insertFavouriteSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "artist"    # Ljava/lang/String;
    .param p2, "songTitle"    # Ljava/lang/String;
    .param p3, "imageuri"    # Ljava/lang/String;
    .param p4, "mediaId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "insert into favoritesong(artist, song, imageuri, mediaid, isactive, dateadded) values (?,?,?,?,?,current_timestamp)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->insertFavouriteSong:Landroid/database/sqlite/SQLiteStatement;

    .line 67
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->insertFavouriteSong:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->insertFavouriteSong:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->insertFavouriteSong:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->insertFavouriteSong:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p4, p5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 71
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->insertFavouriteSong:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 72
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->insertFavouriteSong:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 73
    return-void
.end method

.method public insertFavouriteStation(J)V
    .locals 4
    .param p1, "stationId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 149
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "insert into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v2, "favoritestation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    const-string v2, " (stationid, dateadded, isactive)  values ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 154
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    const-string v2, "current_timestamp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 158
    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    const/4 v2, 0x1

    sput-boolean v2, Lcom/clearchannel/iheartradio/db/DBFavourite;->didChanges:Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    return-void

    .line 164
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 166
    .local v0, "e":Landroid/database/SQLException;
    throw v0
.end method

.method public isFavouriteSongInactive(J)Z
    .locals 6
    .param p1, "mediaId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 76
    const-wide/16 v1, -0x1

    .line 77
    .local v1, "isActive":J
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "select isactive from favoritesong where mediaid = ?"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->isFavouriteSongActive:Landroid/database/sqlite/SQLiteStatement;

    .line 78
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->isFavouriteSongActive:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3, v5, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 80
    :try_start_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->isFavouriteSongActive:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    .line 87
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    move v3, v5

    .line 91
    :goto_0
    return v3

    .line 81
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, "e":Landroid/database/sqlite/SQLiteDoneException;
    move v3, v5

    .line 82
    goto :goto_0

    .line 83
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDoneException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, "e":Ljava/lang/Exception;
    move v3, v5

    .line 84
    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isFavouriteStationInDB(J)Z
    .locals 5
    .param p1, "stationId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 192
    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "select isactive from favoritestation where stationid = ?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->isFavouriteStationActive:Landroid/database/sqlite/SQLiteStatement;

    .line 193
    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->isFavouriteStationActive:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1, v4, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->isFavouriteStationActive:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v4

    .line 201
    :goto_0
    return v1

    .line 196
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, "e":Landroid/database/sqlite/SQLiteDoneException;
    move v1, v3

    .line 197
    goto :goto_0

    .line 198
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDoneException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, "e":Ljava/lang/Exception;
    move v1, v3

    .line 199
    goto :goto_0
.end method

.method public isFavouriteStationInactive(J)Z
    .locals 6
    .param p1, "stationId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 205
    const-wide/16 v1, -0x1

    .line 206
    .local v1, "isActive":J
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "select isactive from favoritestation where stationid = ?"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->isFavouriteStationActive:Landroid/database/sqlite/SQLiteStatement;

    .line 207
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->isFavouriteStationActive:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3, v5, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 209
    :try_start_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->isFavouriteStationActive:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    .line 216
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    move v3, v5

    .line 220
    :goto_0
    return v3

    .line 210
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, "e":Landroid/database/sqlite/SQLiteDoneException;
    move v3, v5

    .line 211
    goto :goto_0

    .line 212
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDoneException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, "e":Ljava/lang/Exception;
    move v3, v5

    .line 213
    goto :goto_0

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isSongFavourited(J)Z
    .locals 7
    .param p1, "mediaId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 95
    const-wide/16 v1, -0x1

    .line 96
    .local v1, "isActive":J
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "select isactive from favoritesong where mediaid = ?"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->isFavouriteSongActive:Landroid/database/sqlite/SQLiteStatement;

    .line 97
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->isFavouriteSongActive:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3, v6, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 99
    :try_start_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->isFavouriteSongActive:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    .line 106
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    move v3, v5

    .line 110
    :goto_0
    return v3

    .line 100
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, "e":Landroid/database/sqlite/SQLiteDoneException;
    move v3, v5

    .line 101
    goto :goto_0

    .line 102
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDoneException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, "e":Ljava/lang/Exception;
    move v3, v5

    .line 103
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v3, v6

    .line 110
    goto :goto_0
.end method

.method public isStationFavourited(J)Z
    .locals 7
    .param p1, "stationId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 224
    const-wide/16 v1, -0x1

    .line 225
    .local v1, "isActive":J
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "select isactive from favoritestation where stationid = ?"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->isFavouriteStationActive:Landroid/database/sqlite/SQLiteStatement;

    .line 226
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->isFavouriteStationActive:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3, v6, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 228
    :try_start_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->isFavouriteStationActive:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    .line 235
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    move v3, v5

    .line 239
    :goto_0
    return v3

    .line 229
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, "e":Landroid/database/sqlite/SQLiteDoneException;
    move v3, v5

    .line 230
    goto :goto_0

    .line 231
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDoneException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, "e":Ljava/lang/Exception;
    move v3, v5

    .line 232
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v3, v6

    .line 239
    goto :goto_0
.end method

.method public selectAllFavouritesSongs()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/db/DBFavourite$Song;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 377
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/db/DBFavourite$Song;>;"
    const/4 v0, 0x0

    .line 381
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "select artist, song, imageuri, dateadded, isactive, itunesid, mediaid from favoritesong where isactive = 1"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_3

    .line 391
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 413
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 414
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 418
    :cond_0
    :goto_0
    return-object v3

    .line 392
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 394
    :cond_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;

    invoke-direct {v4}, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;-><init>()V

    .line 395
    .local v4, "song":Lcom/clearchannel/iheartradio/db/DBFavourite$Song;
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;->artist:Ljava/lang/String;

    .line 396
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;->song:Ljava/lang/String;

    .line 398
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;->imageuri:Ljava/lang/String;

    .line 400
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "dt":Ljava/lang/String;
    sget-object v5, Lcom/clearchannel/iheartradio/db/DBFavourite;->SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;->dateadded:J

    .line 403
    const/4 v5, 0x4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v8, :cond_4

    move v5, v8

    :goto_1
    iput-boolean v5, v4, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;->isactive:Z

    .line 404
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;->itunesid:I

    .line 405
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v4, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;->mediaid:J

    .line 406
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 393
    if-nez v5, :cond_2

    .line 413
    .end local v1    # "dt":Ljava/lang/String;
    .end local v4    # "song":Lcom/clearchannel/iheartradio/db/DBFavourite$Song;
    :cond_3
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 414
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v1    # "dt":Ljava/lang/String;
    .restart local v4    # "song":Lcom/clearchannel/iheartradio/db/DBFavourite$Song;
    :cond_4
    move v5, v9

    .line 403
    goto :goto_1

    .line 410
    .end local v1    # "dt":Ljava/lang/String;
    .end local v4    # "song":Lcom/clearchannel/iheartradio/db/DBFavourite$Song;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 411
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Landroid/database/SQLException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 412
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 413
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_5

    .line 414
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 416
    :cond_5
    throw v5
.end method

.method public selectAllFavouritesStations()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/db/DBFavourite$Station;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 423
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/db/DBFavourite$Station;>;"
    const/4 v0, 0x0

    .line 427
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v6, "SELECT favoritestation.stationid, station.callletters, "

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 428
    .local v4, "sql":Ljava/lang/StringBuffer;
    const-string v6, "favoritestation.displayorder, favoritestation.dateadded, favoritestation.isactive, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    const-string v6, "station.name "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    const-string v6, "FROM "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    const-string v6, "favoritestation, station  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    const-string v6, "WHERE "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    const-string v6, "favoritestation.stationid=station.ccstationid and favoritestation.dateadded>(SELECT dateadded FROM favoritestation WHERE stationid = -1)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    iget-object v6, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_3

    .line 443
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 466
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 467
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 470
    :cond_0
    :goto_0
    return-object v3

    .line 444
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 446
    :cond_2
    new-instance v5, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;

    invoke-direct {v5}, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;-><init>()V

    .line 448
    .local v5, "station":Lcom/clearchannel/iheartradio/db/DBFavourite$Station;
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v5, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->stationid:J

    .line 449
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->callletters:Ljava/lang/String;

    .line 450
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->displayorder:I

    .line 452
    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "dt":Ljava/lang/String;
    sget-object v6, Lcom/clearchannel/iheartradio/db/DBFavourite;->SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->dateadded:J

    .line 455
    const/4 v6, 0x4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v9, :cond_4

    move v6, v9

    :goto_1
    iput-boolean v6, v5, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->isactive:Z

    .line 457
    const/4 v6, 0x5

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->station:Ljava/lang/String;

    .line 459
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 445
    if-nez v6, :cond_2

    .line 466
    .end local v1    # "dt":Ljava/lang/String;
    .end local v5    # "station":Lcom/clearchannel/iheartradio/db/DBFavourite$Station;
    :cond_3
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 467
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v1    # "dt":Ljava/lang/String;
    .restart local v5    # "station":Lcom/clearchannel/iheartradio/db/DBFavourite$Station;
    :cond_4
    move v6, v10

    .line 455
    goto :goto_1

    .line 463
    .end local v1    # "dt":Ljava/lang/String;
    .end local v4    # "sql":Ljava/lang/StringBuffer;
    .end local v5    # "station":Lcom/clearchannel/iheartradio/db/DBFavourite$Station;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 464
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Landroid/database/SQLException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 466
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_5

    .line 467
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 469
    :cond_5
    throw v6
.end method

.method public setAutoplayStation(J)V
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update favoritestation set autoplay = 1 where stationid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "update":Ljava/lang/String;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public syncStations(Ljava/lang/String;)V
    .locals 23
    .param p1, "xmlResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 662
    const-string v13, "<favorite id=\""

    .line 663
    .local v13, "start":Ljava/lang/String;
    const-string v8, "\" status=\""

    .line 664
    .local v8, "end":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    .line 665
    .local v14, "startLen":I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 667
    .local v9, "endLen":I
    const/4 v10, 0x0

    .line 668
    .local v10, "from":I
    const/16 v17, 0x0

    .line 669
    .local v17, "to":I
    const-string v5, ""

    .line 670
    .local v5, "callleters":Ljava/lang/String;
    const-string v16, ""

    .line 671
    .local v16, "status":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 672
    .local v4, "callLettersList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 674
    .local v18, "where":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    move-object v1, v13

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    if-gtz v10, :cond_5

    .line 696
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 697
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 699
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "SELECT callletters, ccstationid FROM station "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 701
    if-eqz v6, :cond_2

    .line 702
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 704
    :cond_1
    const/16 v19, 0x0

    move-object v0, v6

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object v0, v6

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    .line 703
    if-nez v19, :cond_1

    .line 711
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v19

    if-nez v19, :cond_3

    .line 712
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 718
    :cond_3
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_4
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_8

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v19, v0

    const-string v20, "favoritestation"

    const-string v21, "isactive = 0 AND stationid != -1"

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 751
    invoke-virtual/range {p0 .. p0}, Lcom/clearchannel/iheartradio/db/DBFavourite;->updateSyncTimeStamp()V

    .line 752
    return-void

    .line 675
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    move-object/from16 v0, p1

    move-object v1, v8

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v17

    .line 676
    add-int/2addr v10, v14

    .line 677
    move-object/from16 v0, p1

    move v1, v10

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 678
    add-int v17, v17, v9

    .line 679
    add-int/lit8 v19, v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 685
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v19

    if-nez v19, :cond_6

    .line 686
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " WHERE callletters =\'"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\' "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 691
    :goto_2
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 692
    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 688
    :cond_6
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " OR callletters =\'"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\' "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 708
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v19

    move-object/from16 v7, v19

    .line 709
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v19, Landroid/database/SQLException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    .line 711
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v20

    if-nez v20, :cond_7

    .line 712
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 714
    :cond_7
    throw v19

    .line 718
    :cond_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 719
    .local v11, "key":Ljava/lang/String;
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .local v15, "stationId":Ljava/lang/Integer;
    if-eqz v15, :cond_4

    .line 721
    :try_start_2
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 722
    .local v3, "action":Ljava/lang/String;
    const-string v20, "A"

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 723
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;->isFavouriteStationInDB(J)Z

    move-result v20

    if-nez v20, :cond_9

    .line 724
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;->insertFavouriteStation(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 736
    .end local v3    # "action":Ljava/lang/String;
    :catch_1
    move-exception v20

    move-object/from16 v7, v20

    .line 738
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 728
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "action":Ljava/lang/String;
    :cond_9
    :try_start_3
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;->updateFavouriteStation(J)V

    goto/16 :goto_1

    .line 732
    :cond_a
    const-string v20, "D"

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 733
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;->deleteFavoriteStation(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method public syncStations(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRStation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 619
    .local p1, "stations":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRStation;>;"
    if-nez p1, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 625
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 635
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DBFavourite;->updateSyncTimeStamp()V

    goto :goto_0

    .line 625
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRStation;

    .line 627
    .local v0, "ihrStation":Lcom/clearchannel/iheartradio/model/IHRStation;
    new-instance v5, Ljava/lang/Long;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 628
    .local v1, "stationId":J
    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;->isStationFavourited(J)Z

    move-result v3

    if-nez v3, :cond_3

    .line 629
    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;->insertFavouriteStation(J)V

    goto :goto_1

    .line 631
    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;->updateFavouriteStation(J)V

    goto :goto_1
.end method

.method public updateFavouriteStation(J)V
    .locals 4
    .param p1, "stationId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 173
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 174
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, " UPDATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    const-string v2, "favoritestation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    const-string v2, " SET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    const-string v2, " dateadded = current_timestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const-string v2, ",isactive = 1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " stationid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 183
    const/4 v2, 0x1

    sput-boolean v2, Lcom/clearchannel/iheartradio/db/DBFavourite;->didChanges:Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    return-void

    .line 185
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 187
    .local v0, "e":Landroid/database/SQLException;
    throw v0
.end method

.method public updateSongActiveStatus(JZ)V
    .locals 4
    .param p1, "mediaId"    # J
    .param p3, "isActive"    # Z

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v1, "favoritesong"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v1, " set isactive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    if-eqz p3, :cond_0

    .line 134
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 135
    const-string v1, ", dateadded = current_timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :goto_0
    const-string v1, " where mediaid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 141
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    const-string v1, "DBFavourite"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updating the song active status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    return-void

    .line 137
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public updateStationActiveStatus(JZ)V
    .locals 4
    .param p1, "stationId"    # J
    .param p3, "isActive"    # Z

    .prologue
    const/4 v3, 0x1

    .line 263
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    const-string v1, "favoritestation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    const-string v1, " set isactive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    if-eqz p3, :cond_0

    .line 268
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 269
    const-string v1, ", dateadded = current_timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    :goto_0
    const-string v1, " where stationid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 276
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    sput-boolean v3, Lcom/clearchannel/iheartradio/db/DBFavourite;->didChanges:Z

    .line 281
    return-void

    .line 271
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 272
    const-string v1, ", dateadded = current_timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public updateSyncTimeStamp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBFavourite;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE favoritestation SET dateadded=current_timestamp WHERE stationid = -1"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 532
    const/4 v0, 0x0

    sput-boolean v0, Lcom/clearchannel/iheartradio/db/DBFavourite;->didChanges:Z

    .line 533
    return-void
.end method
