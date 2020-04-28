.class public Lcom/clearchannel/iheartradio/db/DBHistory;
.super Lcom/clearchannel/iheartradio/db/DBBase;
.source "DBHistory.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting:[I = null

.field private static final INSERT_HISTORY:Ljava/lang/String; = "insert into history(historytimestamp, artist, song, stationid, stationimageuri, songimageuri) values (current_timestamp,?,?,?,?, ?)"

.field public static final KEY_CALLLETTERS:I = 0xa

.field private static final SELECT_HISTORY_ID_BY_STATION_ID:Ljava/lang/String; = "select _id from history where stationid = ?"

.field private static final UPDATE_HISTORY:Ljava/lang/String; = "update history set historytimestamp = current_timestamp, artist = ?, song = ?, stationimageuri = ?, songimageuri = ? where _id = ?"


# instance fields
.field private insertHistoryStmt:Landroid/database/sqlite/SQLiteStatement;

.field private selectHistoryIDByStationID:Landroid/database/sqlite/SQLiteStatement;

.field private updateHistoryStmt:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting()[I
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lcom/clearchannel/iheartradio/db/DBHistory;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting:[I

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
    sput-object v0, Lcom/clearchannel/iheartradio/db/DBHistory;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting:[I

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
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/db/DBBase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 39
    const-string v0, "insert into history(historytimestamp, artist, song, stationid, stationimageuri, songimageuri) values (current_timestamp,?,?,?,?, ?)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->insertHistoryStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 40
    return-void
.end method


# virtual methods
.method public deleteAllHistory()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "history"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public deleteHistoryRecord(J)V
    .locals 4
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 48
    .local v0, "args":[Ljava/lang/String;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "history"

    const-string v3, "stationid=?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public getCursorAllHistory(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    .locals 5
    .param p1, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 104
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/clearchannel/iheartradio/db/DBHistory;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 117
    :goto_0
    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 125
    :cond_0
    return-object v0

    .line 107
    :pswitch_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select history._id, history.historytimestamp, history.artist, history.song, history.stationid, history.mediaid, history.itunesid, history.stationimageuri, history.songimageuri, station.name, station.callletters, station.description from history , station where history.stationid = station.ccstationid ORDER BY CAST(history.historytimestamp AS datetime) ASC LIMIT 0, 20 "

    .line 108
    const/4 v4, 0x0

    .line 107
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 109
    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select history._id, history.historytimestamp, history.artist, history.song, history.stationid, history.mediaid, history.itunesid, history.stationimageuri, history.songimageuri, station.name, station.callletters, station.description from history , station where history.stationid = station.ccstationid ORDER BY history.historytimestamp DESC LIMIT 0, 20 "

    .line 113
    const/4 v4, 0x0

    .line 112
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/database/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insertHistory(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p1, "artist"    # Ljava/lang/String;
    .param p2, "song"    # Ljava/lang/String;
    .param p3, "stationid"    # J
    .param p5, "stationImageuri"    # Ljava/lang/String;
    .param p6, "songImageuri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "insert into history(historytimestamp, artist, song, stationid, stationimageuri, songimageuri) values (current_timestamp,?,?,?,?, ?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->insertHistoryStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 61
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->insertHistoryStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->insertHistoryStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->insertHistoryStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 64
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->insertHistoryStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->insertHistoryStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->insertHistoryStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public selectAllHistories()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 84
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "history"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "state"

    aput-object v4, v2, v10

    .line 86
    const-string v7, "name desc"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 85
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 87
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 88
    if-nez v0, :cond_0

    .line 92
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_2
    return-object v9
.end method

.method public selectHistoryIdForStationId(J)J
    .locals 2
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;,
            Landroid/database/sqlite/SQLiteDoneException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "select _id from history where stationid = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->selectHistoryIDByStationID:Landroid/database/sqlite/SQLiteStatement;

    .line 53
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->selectHistoryIDByStationID:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 55
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->selectHistoryIDByStationID:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public updateHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "artist"    # Ljava/lang/String;
    .param p2, "song"    # Ljava/lang/String;
    .param p3, "stationImageuri"    # Ljava/lang/String;
    .param p4, "songImageuri"    # Ljava/lang/String;
    .param p5, "historyId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "update history set historytimestamp = current_timestamp, artist = ?, song = ?, stationimageuri = ?, songimageuri = ? where _id = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->updateHistoryStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 72
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->updateHistoryStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->updateHistoryStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->updateHistoryStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->updateHistoryStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->updateHistoryStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 78
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBHistory;->updateHistoryStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 79
    return-void
.end method
