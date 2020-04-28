.class public Lcom/clearchannel/iheartradio/db/DBStation;
.super Lcom/clearchannel/iheartradio/db/DBBase;
.source "DBStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$db$DBStation$SearchCriteria:[I = null

.field private static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting:[I = null

.field private static final INSERT_STATION:Ljava/lang/String; = "insert into station(callletters, ccstationid, name , ads_gateway_dart_url_v2, description, is_talk, logo_url, station_url, stream_url_v2, stream_url_rtsp, frequency, band ) values (?,?,?,?,?,?,?,?,?,?,?,?)"

.field private static final INSERT_STATION_CITY:Ljava/lang/String; = "insert into stationcity(stationid, cityid) values (?,?)"

.field private static final INSERT_STATION_FORMAT:Ljava/lang/String; = "insert into stationformat(stationid, formatid) values (?,?)"

.field public static final KEY_AUTOPLAY:Ljava/lang/String; = "autoplay"

.field public static final KEY_CALLLETTERS:Ljava/lang/String; = "callletters"

.field public static final KEY_CCSTATIONID:Ljava/lang/String; = "ccstationid"

.field public static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final KEY_FREQANDNAME:Ljava/lang/String; = "freqname"

.field public static final KEY_FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final LOG_TAG:Ljava/lang/String; = "DBStation"

.field private static final SELECT_ID_BY_CALL_LETTERS:Ljava/lang/String; = "select _id from station where callletters = ?"

.field private static final SELECT_ID_BY_STATION_URL:Ljava/lang/String; = "select _id from station where station_url = ?"

.field private static final SELECT_ID_BY_STREAM_ID:Ljava/lang/String; = "select _id from station where ccstationid = ?"

.field private static final SELECT_STATION_ID_BY_STATION_ID:Ljava/lang/String; = "select _id from station where _id = ?"

.field private static final selectFrequencyAndName:Ljava/lang/String; = ", CASE s.frequency WHEN s.frequency>0 THEN s.name ELSE (s.frequency || \' | \' || s.name) END \'freqname\' "


# instance fields
.field private insertStationCityStmt:Landroid/database/sqlite/SQLiteStatement;

.field private insertStationFormatStmt:Landroid/database/sqlite/SQLiteStatement;

.field private insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

.field private selectIdByCallLettersStmt:Landroid/database/sqlite/SQLiteStatement;

.field private selectIdByStationURLStmt:Landroid/database/sqlite/SQLiteStatement;

.field private selectIdByStreamId:Landroid/database/sqlite/SQLiteStatement;

.field private selectStationIdByStationId:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$db$DBStation$SearchCriteria()[I
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lcom/clearchannel/iheartradio/db/DBStation;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DBStation$SearchCriteria:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->values()[Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->CALLLETTERS:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->FREQUENCY:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->GENRE:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->LOCATION:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->NAME:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/clearchannel/iheartradio/db/DBStation;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DBStation$SearchCriteria:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting()[I
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lcom/clearchannel/iheartradio/db/DBStation;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting:[I

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
    sput-object v0, Lcom/clearchannel/iheartradio/db/DBStation;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting:[I

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
    .line 73
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/db/DBBase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 74
    return-void
.end method


# virtual methods
.method public deleteAllCityStations()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 265
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stationcity"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method public deleteAllFormatStations()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 269
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stationformat"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 270
    return-void
.end method

.method public deleteAllStations()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 273
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "station"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stationcity"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stationformat"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 276
    return-void
.end method

.method public deleteStation(Ljava/lang/Long;)V
    .locals 6
    .param p1, "streamId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 977
    const-wide/16 v1, -0x1

    .line 980
    .local v1, "id":J
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/clearchannel/iheartradio/db/DBStation;->getIdByStreamId(JZ)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    .line 990
    :try_start_1
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DELETE FROM stationformat WHERE stationid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 991
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DELETE FROM stationcity WHERE stationid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 992
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DELETE FROM favoritestation WHERE stationid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 993
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DELETE FROM history WHERE stationid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 994
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DELETE FROM station WHERE _id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 999
    :goto_0
    return-void

    .line 981
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 983
    .local v0, "e":Landroid/database/sqlite/SQLiteDoneException;
    goto :goto_0

    .line 985
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDoneException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 986
    .local v0, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    const-string v3, "DBStation"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Database exception while searching for station id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 995
    .end local v0    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 996
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DBStation"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Database exception while deleting station_id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endGetIdByStationURL()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->selectIdByStationURLStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 258
    return-void
.end method

.method public endGetIdByStreamId()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->selectIdByStreamId:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 262
    return-void
.end method

.method public endInsertStation()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 146
    return-void
.end method

.method public endInsertStationCity()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationCityStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 240
    return-void
.end method

.method public endInsertStationFormat()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationFormatStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 254
    return-void
.end method

.method public getCursoStationsByStateAndFormat(JJLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;
    .locals 9
    .param p1, "stateID"    # J
    .param p3, "formatID"    # J
    .param p5, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .param p6, "isCommercialFree"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 744
    const/4 v1, 0x0

    .line 746
    .local v1, "cursor":Landroid/database/Cursor;
    const-string v0, ""

    .line 748
    .local v0, "commercialStmt":Ljava/lang/String;
    if-eqz p6, :cond_1

    .line 749
    const-string v0, " and s.band = \'2IP\' "

    .line 751
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    .local v3, "national":Ljava/lang/StringBuilder;
    const-string v7, " UNION  select s.*"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    const-string v7, ", CASE s.frequency WHEN s.frequency>0 THEN s.name ELSE (s.frequency || \' | \' || s.name) END \'freqname\' "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    const-string v7, " from station s "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    const-string v7, "left join stationcity sc on s._id = sc.stationid "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    const-string v7, "left join city c on sc.cityid = c._id "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    const-string v7, "left join stationformat sf on s._id = sf.stationid "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    const-string v7, "left join format f on sf.formatid = f._id "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    const-string v7, "where f._id = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 761
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " and sc.cityid in (SELECT _id from city where stateid ="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    const-string v7, " and s.band = \'2IP\' "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    .end local v3    # "national":Ljava/lang/StringBuilder;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 769
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v7, "select s.* "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    const-string v7, ", CASE s.frequency WHEN s.frequency>0 THEN s.name ELSE (s.frequency || \' | \' || s.name) END \'freqname\' "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    const-string v7, " from station s "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    const-string v7, "left join stationcity sc on s._id = sc.stationid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    const-string v7, "left join city c on sc.cityid = c._id "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    const-string v7, "left join state st on c.stateid = st._id "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const-string v7, "left join stationformat sf on s._id = sf.stationid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    const-string v7, "left join format f on sf.formatid = f._id "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    const-string v7, "where f._id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 779
    const-string v7, " and st._id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    :try_start_0
    invoke-static {}, Lcom/clearchannel/iheartradio/db/DBStation;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting()[I

    move-result-object v7

    invoke-virtual {p5}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 811
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 812
    .local v4, "query":Ljava/lang/String;
    iget-object v7, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 815
    if-eqz v1, :cond_0

    .line 816
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :cond_0
    return-object v1

    .line 765
    .end local v4    # "query":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const-string v0, " and s.band <> \'2IP\' "

    goto :goto_0

    .line 786
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :pswitch_0
    :try_start_1
    const-string v7, " order by name asc"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 818
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 819
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v7, Landroid/database/SQLException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 789
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_2
    const-string v7, " order by name desc"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 792
    :pswitch_2
    const-string v7, " order by name asc"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 795
    :pswitch_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 796
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .local v6, "sb":Ljava/lang/StringBuilder;
    :try_start_3
    const-string v7, "select s.* "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    const-string v7, ", CASE s.frequency WHEN s.frequency>0 THEN s.name ELSE (s.frequency || \' | \' || s.name) END \'freqname\' "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    const-string v7, " from station s, city c, stationcity sc, state st, format f, stationformat sf "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const-string v7, "where s._id = sc.stationid and c._id = sc.cityid and st._id = c.stateid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    const-string v7, "and sf.stationid = s._id and sf.formatid = f._id and f._id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 802
    const-string v7, " and st._id ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    const-string v7, " order by band, frequency, name asc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v5, v6

    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 818
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v7

    move-object v2, v7

    move-object v5, v6

    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 784
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCursoStationsCity(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;
    .locals 10
    .param p1, "cityId"    # J
    .param p3, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .param p4, "isCommercialFree"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 669
    const/4 v1, 0x0

    .line 670
    .local v1, "cursor":Landroid/database/Cursor;
    const-string v0, ""

    .line 672
    .local v0, "commercialStmt":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " UNION select s.*, CASE s.frequency WHEN s.frequency>0 THEN s.name ELSE (s.frequency || \' | \' || s.name) END \'freqname\' , 2 AS priority  from station s , stationcity y where s._id = y.stationid and y.cityid = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and s.band = \'2IP\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, "nationalStmt":Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 675
    const-string v0, " and s.band = \'2IP\' "

    .line 676
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 681
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    .local v7, "traffic":Ljava/lang/StringBuilder;
    const-string v8, "select s.* "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const-string v8, ", CASE s.frequency WHEN s.frequency>0 THEN s.name ELSE (s.frequency || \' | \' || s.name) END \'freqname\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    const-string v8, ", 1 AS priority from station s , stationcity y where  ifnull(s.station_url,\'\') like \'TRAFFIC-%\' and s._id = y.stationid and y.cityid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 687
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 688
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v8, "select s.* "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    const-string v8, ", CASE s.frequency WHEN s.frequency>0 THEN s.name ELSE (s.frequency || \' | \' || s.name) END \'freqname\' "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const-string v8, ", 2 AS priority from station s , stationcity y where  ifnull(s.station_url,\'\') not like \'TRAFFIC-%\' and s._id = y.stationid and y.cityid = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    :try_start_0
    invoke-static {}, Lcom/clearchannel/iheartradio/db/DBStation;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting()[I

    move-result-object v8

    invoke-virtual {p3}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 715
    :goto_1
    const-string v4, ""

    .line 716
    .local v4, "query":Ljava/lang/String;
    if-eqz p4, :cond_2

    .line 717
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 723
    :goto_2
    iget-object v8, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 725
    if-eqz v1, :cond_0

    .line 726
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :cond_0
    return-object v1

    .line 678
    .end local v4    # "query":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "traffic":Ljava/lang/StringBuilder;
    :cond_1
    const-string v0, " and s.band <> \'2IP\' "

    goto :goto_0

    .line 697
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "traffic":Ljava/lang/StringBuilder;
    :pswitch_0
    :try_start_1
    const-string v8, " order by priority asc, name asc"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 729
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 730
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    new-instance v8, Landroid/database/SQLException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 700
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_2
    const-string v8, " order by priority asc, name desc"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 703
    :pswitch_2
    const-string v8, " order by priority asc, name asc"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 706
    :pswitch_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 707
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .local v6, "sb":Ljava/lang/StringBuilder;
    :try_start_3
    const-string v8, "select s.* "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    const-string v8, ", CASE s.frequency WHEN s.frequency>0 THEN s.name ELSE (s.frequency || \' | \' || s.name) END \'freqname\' "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    const-string v8, ", 2 AS priority  from station s , stationcity y where ifnull(s.station_url,\'\') not like \'TRAFFIC-%\' and  s._id = y.stationid and y.cityid = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    const-string v8, " order by priority asc, band, frequency, name asc"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v5, v6

    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 719
    .restart local v4    # "query":Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string v8, " UNION "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v4

    goto :goto_2

    .line 729
    .end local v4    # "query":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v8

    move-object v2, v8

    move-object v5, v6

    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    goto :goto_3

    .line 695
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCursoStationsSearchBy(Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "searchCriteria"    # Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;
    .param p2, "searchedValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 939
    const/4 v0, 0x0

    .line 942
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/clearchannel/iheartradio/db/DBStation;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DBStation$SearchCriteria()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 960
    :goto_0
    if-eqz v0, :cond_0

    .line 961
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 967
    :cond_0
    return-object v0

    .line 944
    :pswitch_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select s.* from station s where s.name like \'%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 945
    goto :goto_0

    .line 947
    :pswitch_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select s.* from station s, city c, stationcity sc, state st where s._id = sc.stationid and c._id = sc.cityid and st._id = c.stateid and (c.city like \'%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\' or st.state like \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 948
    goto :goto_0

    .line 950
    :pswitch_2
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select s.* from station s, format f, stationformat sf where s._id = sf.stationid and f._id = sf.formatid and f.format like \'%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 951
    goto :goto_0

    .line 953
    :pswitch_3
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select s.* , CASE s.frequency WHEN s.frequency>0 THEN s.name ELSE (s.frequency || \' | \' || s.name) END \'freqname\'  from station s where s.frequency like \'%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 954
    goto/16 :goto_0

    .line 956
    :pswitch_4
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select s.* from station s where s.callletters like \'%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 963
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 964
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/database/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 942
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getCursorAllStations(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    .locals 10
    .param p1, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 628
    const/4 v8, 0x0

    .line 631
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/clearchannel/iheartradio/db/DBStation;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 651
    :goto_0
    if-eqz v8, :cond_0

    .line 652
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 659
    :cond_0
    return-object v8

    .line 633
    :pswitch_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "station"

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "callletters"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "is_talk"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "logo_url"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "ccstationid"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "station_url"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 634
    const-string v4, "stream_url_rtsp"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "stream_url_v2"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "ads_gateway_dart_url_v2"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name asc"

    .line 633
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 635
    goto :goto_0

    .line 637
    :pswitch_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "station"

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "callletters"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "is_talk"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "logo_url"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "ccstationid"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "station_url"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 638
    const-string v4, "stream_url_rtsp"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "stream_url_v2"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "ads_gateway_dart_url_v2"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name desc"

    .line 637
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 639
    goto/16 :goto_0

    .line 641
    :pswitch_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "station"

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "callletters"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "is_talk"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "logo_url"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "ccstationid"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "station_url"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 642
    const-string v4, "stream_url_rtsp"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "stream_url_v2"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "ads_gateway_dart_url_v2"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name asc"

    .line 641
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 643
    goto/16 :goto_0

    .line 645
    :pswitch_3
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "select _id, callletters, description, is_talk, logo_url, name, ccstationid, station_url, stream_url_rtsp, stream_url_v2, ads_gateway_dart_url_v2 , CASE s.frequency WHEN s.frequency>0 THEN s.name ELSE (s.frequency || \' | \' || s.name) END \'freqname\' from station order by band, frequency, name asc"

    .line 647
    const/4 v2, 0x0

    .line 645
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .line 655
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 656
    .local v9, "e":Ljava/lang/Exception;
    new-instance v0, Landroid/database/SQLException;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCursorStationsByCalllettersAndFormat(Ljava/util/ArrayList;Ljava/lang/String;Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    .locals 9
    .param p2, "formatName"    # Ljava/lang/String;
    .param p3, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .local p1, "stationsCallletters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 1004
    const/4 v0, 0x0

    .line 1006
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v3, "select * from station s, stationcity sc, city c where c.city!= \'National\' and  s._id = sc.stationid and c._id = sc.cityid "

    .line 1007
    .local v3, "query":Ljava/lang/String;
    const-string v4, " s.callletters = \'%s\' "

    .line 1009
    .local v4, "selection":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 1024
    :try_start_0
    invoke-static {}, Lcom/clearchannel/iheartradio/db/DBStation;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting()[I

    move-result-object v5

    invoke-virtual {p3}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1042
    :goto_1
    if-eqz v0, :cond_0

    .line 1043
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    :cond_0
    return-object v0

    .line 1011
    :cond_1
    if-nez v2, :cond_2

    const-string v5, " and  ( "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1012
    :cond_2
    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1014
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v8

    if-ne v2, v5, :cond_3

    .line 1015
    const-string v5, " )"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1016
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " and s.callletters  in (select callletters from station s,  stationformat sf, format f   where s._id = sf.stationid and f._id = sf.formatid  and f.format = \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1009
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1018
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " or "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1026
    :pswitch_0
    :try_start_1
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " group by s.name order by name asc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1027
    goto :goto_1

    .line 1030
    :pswitch_1
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " group by s.name order by name desc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1031
    goto/16 :goto_1

    .line 1034
    :pswitch_2
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " group by s.name order by name asc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1035
    goto/16 :goto_1

    .line 1038
    :pswitch_3
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " group by s.name order by band, frequency, name asc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 1045
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1046
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Landroid/database/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1024
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCursorStationsFormats(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;
    .locals 10
    .param p1, "formatId"    # J
    .param p3, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .param p4, "isCommercialFree"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 861
    const/4 v1, 0x0

    .line 862
    .local v1, "cursor":Landroid/database/Cursor;
    const-string v5, ""

    .line 863
    .local v5, "removeLocalClause":Ljava/lang/String;
    const-string v0, ""

    .line 865
    .local v0, "commercialStmt":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 866
    .local v3, "ntlFormat":Ljava/lang/StringBuilder;
    const-string v8, " UNION select s.* "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    const-string v8, ", CASE s.frequency WHEN s.frequency>0 THEN s.name ELSE (s.frequency || \' | \' || s.name) END \'freqname\' "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    const-string v8, " from station s "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    const-string v8, "left join stationformat sf on s._id=sf.stationid "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    const-string v8, "left join format f on sf.formatid = f._id "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    const-string v8, "where  f._id = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 873
    const-string v8, " and s.band = \'2IP\' "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    if-eqz p4, :cond_1

    .line 877
    const-string v0, " and s.band = \'2IP\' "

    .line 878
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 884
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string v8, "select s.*"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    const-string v8, ", CASE s.frequency WHEN s.frequency>0 THEN s.name ELSE (s.frequency || \' | \' || s.name) END \'freqname\' "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    const-string v8, " from station s , stationformat y, format z "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    const-string v8, "where  s._id = y.stationid and z._id = y.formatid and z._id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    :try_start_0
    invoke-static {}, Lcom/clearchannel/iheartradio/db/DBStation;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting()[I

    move-result-object v8

    invoke-virtual {p3}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 918
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 919
    .local v4, "query":Ljava/lang/String;
    iget-object v8, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 921
    if-eqz v1, :cond_0

    .line 922
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    :cond_0
    return-object v1

    .line 880
    .end local v4    # "query":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const-string v0, " and s.band <> \'2IP\'"

    .line 881
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DBStation;->removeLocalStationQuery()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 896
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :pswitch_0
    :try_start_1
    const-string v8, " order by name asc"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 925
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 926
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v8, Landroid/database/SQLException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 899
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_2
    const-string v8, " order by name desc"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 902
    :pswitch_2
    const-string v8, " order by name asc"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 905
    :pswitch_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 906
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .local v7, "sb":Ljava/lang/StringBuilder;
    :try_start_3
    const-string v8, "select s.*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    const-string v8, ", CASE s.frequency WHEN s.frequency>0 THEN s.name ELSE (s.frequency || \' | \' || s.name) END \'freqname\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    const-string v8, "from station s , stationformat y, format z "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    const-string v8, "where  s._id = y.stationid and z._id = y.formatid and z._id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 911
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    const-string v8, " order by band, frequency, name asc"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v6, v7

    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 925
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v8

    move-object v2, v8

    move-object v6, v7

    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 894
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getIdByCallLetters(Ljava/lang/String;Z)J
    .locals 5
    .param p1, "callLetters"    # Ljava/lang/String;
    .param p2, "prepare"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 279
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DBStation;->prepareGetIdByCallLetters()V

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBStation;->selectIdByCallLettersStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 282
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBStation;->selectIdByCallLettersStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 289
    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DBStation;->selectIdByCallLettersStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 282
    :cond_1
    return-wide v2

    .line 283
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 284
    .local v1, "sqlde":Landroid/database/sqlite/SQLiteDoneException;
    :try_start_1
    new-instance v2, Landroid/database/sqlite/SQLiteDoneException;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDoneException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteDoneException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    .end local v1    # "sqlde":Landroid/database/sqlite/SQLiteDoneException;
    :catchall_0
    move-exception v2

    .line 289
    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBStation;->selectIdByCallLettersStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 290
    :cond_2
    throw v2

    .line 285
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getIdByStationURL(Ljava/lang/String;Z)J
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "prepare"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 294
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DBStation;->prepareGetIdByStationURL()V

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBStation;->selectIdByStationURLStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 297
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBStation;->selectIdByStationURLStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 304
    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DBStation;->selectIdByCallLettersStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 297
    :cond_1
    return-wide v2

    .line 298
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 299
    .local v1, "sqlde":Landroid/database/sqlite/SQLiteDoneException;
    :try_start_1
    new-instance v2, Landroid/database/sqlite/SQLiteDoneException;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDoneException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteDoneException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    .end local v1    # "sqlde":Landroid/database/sqlite/SQLiteDoneException;
    :catchall_0
    move-exception v2

    .line 304
    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBStation;->selectIdByCallLettersStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 305
    :cond_2
    throw v2

    .line 300
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getIdByStreamId(JZ)J
    .locals 7
    .param p1, "streamId"    # J
    .param p3, "prepare"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;,
            Landroid/database/sqlite/SQLiteDoneException;
        }
    .end annotation

    .prologue
    .line 309
    const-wide/16 v1, -0x1

    .line 310
    .local v1, "id":J
    if-eqz p3, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DBStation;->preparedGetIdByStreamId()V

    .line 312
    :cond_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DBStation;->selectIdByStreamId:Landroid/database/sqlite/SQLiteStatement;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 315
    :try_start_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DBStation;->selectIdByStreamId:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 322
    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DBStation;->selectIdByStreamId:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 325
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DBStation;->endGetIdByStreamId()V

    .line 326
    :cond_1
    return-wide v1

    .line 316
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 317
    .local v3, "sqlde":Landroid/database/sqlite/SQLiteDoneException;
    :try_start_1
    new-instance v4, Landroid/database/sqlite/SQLiteDoneException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDoneException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/sqlite/SQLiteDoneException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    .end local v3    # "sqlde":Landroid/database/sqlite/SQLiteDoneException;
    :catchall_0
    move-exception v4

    .line 322
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBStation;->selectIdByStreamId:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 323
    throw v4

    .line 318
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getStationMinID()I
    .locals 7

    .prologue
    .line 330
    const/16 v2, -0xa

    .line 331
    .local v2, "minStationId":I
    const-string v3, "select min(ccstationid) from station"

    .line 332
    .local v3, "query":Ljava/lang/String;
    const/4 v0, 0x0

    .line 335
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 342
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 345
    :goto_0
    if-lez v2, :cond_1

    .line 346
    const/16 v2, -0xa

    .line 349
    :cond_1
    return v2

    .line 339
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 340
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "DBStation"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception getting minStationID: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 341
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 342
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 343
    throw v4
.end method

.method public insertStation(Lcom/clearchannel/iheartradio/model/IHRStation;Z)J
    .locals 12
    .param p1, "station"    # Lcom/clearchannel/iheartradio/model/IHRStation;
    .param p2, "prepare"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 78
    if-eqz p2, :cond_0

    iget-object v7, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "insert into station(callletters, ccstationid, name , ads_gateway_dart_url_v2, description, is_talk, logo_url, station_url, stream_url_v2, stream_url_rtsp, frequency, band ) values (?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    iput-object v7, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 80
    :cond_0
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 83
    .local v2, "frequency":D
    const/16 v7, 0x12

    :try_start_0
    invoke-virtual {p1, v7}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 89
    :goto_0
    iget-object v7, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 90
    iget-object v7, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/Long;

    const/16 v10, 0xc

    invoke-virtual {p1, v10}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v10

    const-string v11, ""

    if-ne v10, v11, :cond_2

    const-string v10, "-1"

    :goto_1
    invoke-direct {v9, v10}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 91
    iget-object v7, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x3

    const/16 v9, 0xb

    invoke-virtual {p1, v9}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    const-string v9, ""

    :goto_2
    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 92
    iget-object v7, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 93
    iget-object v7, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x5

    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4

    const-string v9, ""

    :goto_3
    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 94
    iget-object v7, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x6

    new-instance v9, Ljava/lang/Long;

    const/16 v10, 0x9

    invoke-virtual {p1, v10}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v10

    const-string v11, ""

    if-ne v10, v11, :cond_5

    const-string v10, "-1"

    :goto_4
    invoke-direct {v9, v10}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 95
    iget-object v7, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x7

    const/16 v9, 0xa

    invoke-virtual {p1, v9}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 96
    iget-object v7, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v8, 0x8

    const/16 v9, 0xd

    invoke-virtual {p1, v9}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 97
    iget-object v7, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v8, 0x9

    const/16 v9, 0xf

    invoke-virtual {p1, v9}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 98
    iget-object v7, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v8, 0xa

    const/16 v9, 0xe

    invoke-virtual {p1, v9}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 100
    iget-object v7, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v8, 0xb

    invoke-virtual {v7, v8, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 102
    const-string v0, ""

    .line 122
    .local v0, "band":Ljava/lang/String;
    const/16 v7, 0x15

    invoke-virtual {p1, v7}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 123
    .local v4, "originalBand":Ljava/lang/String;
    const-string v7, "DIGITAL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 124
    const-string v0, "2IP"

    .line 135
    :goto_5
    iget-object v7, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v8, 0xc

    invoke-virtual {v7, v8, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 137
    iget-object v7, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v5

    .line 139
    .local v5, "res":J
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DBStation;->endInsertStation()V

    .line 141
    :cond_1
    return-wide v5

    .line 85
    .end local v0    # "band":Ljava/lang/String;
    .end local v4    # "originalBand":Ljava/lang/String;
    .end local v5    # "res":J
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 87
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v7, "DBStation"

    const-string v8, "Bad frequency number while inserting station record"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 90
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const/16 v10, 0xc

    invoke-virtual {p1, v10}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    goto/16 :goto_1

    .line 91
    :cond_3
    const/16 v9, 0xb

    invoke-virtual {p1, v9}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    goto/16 :goto_2

    .line 93
    :cond_4
    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    goto/16 :goto_3

    .line 94
    :cond_5
    const/16 v10, 0x9

    invoke-virtual {p1, v10}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    goto/16 :goto_4

    .line 125
    .restart local v0    # "band":Ljava/lang/String;
    .restart local v4    # "originalBand":Ljava/lang/String;
    :cond_6
    const-string v7, "FM"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 126
    const-string v0, "0FM"

    goto :goto_5

    .line 127
    :cond_7
    const-string v7, "AM"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 128
    const-string v0, "1AM"

    goto :goto_5

    .line 130
    :cond_8
    const-string v0, "3XX"

    goto :goto_5
.end method

.method public insertStation(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 9
    .param p1, "call_letters"    # Ljava/lang/String;
    .param p2, "cc_station_id"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "ads_gateway_dart_url_v2"    # Ljava/lang/String;
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "is_talk"    # Z
    .param p8, "logo_url"    # Ljava/lang/String;
    .param p9, "station_url"    # Ljava/lang/String;
    .param p10, "stream_url_v2"    # Ljava/lang/String;
    .param p11, "stream_url_rtsp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "insert into station(callletters, ccstationid, name , ads_gateway_dart_url_v2, description, is_talk, logo_url, station_url, stream_url_v2, stream_url_rtsp, frequency, band ) values (?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    iput-object v5, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 211
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 212
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 213
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, p4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 214
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x4

    invoke-virtual {v5, v6, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 215
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, p5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 216
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, p6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 217
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x7

    if-eqz p7, :cond_0

    const/4 v7, 0x1

    :goto_0
    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 218
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0x8

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 219
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0x9

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 220
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0xa

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 221
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0xb

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 223
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v3

    .line 226
    .local v3, "res":J
    return-wide v3

    .line 217
    .end local v3    # "res":J
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public insertStationCity(JJZ)V
    .locals 2
    .param p1, "stationid"    # J
    .param p3, "cityid"    # J
    .param p5, "prepare"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 230
    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "insert into stationcity(stationid, cityid) values (?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationCityStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationCityStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 232
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationCityStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 234
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationCityStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 236
    return-void
.end method

.method public insertStationFormat(JJZ)V
    .locals 2
    .param p1, "stationid"    # J
    .param p3, "formatid"    # J
    .param p5, "prepare"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 243
    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "insert into stationformat(stationid, formatid) values (?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationFormatStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationFormatStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 246
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationFormatStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 248
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationFormatStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 250
    return-void
.end method

.method public prepareGetIdByCallLetters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "select _id from station where callletters = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->selectIdByCallLettersStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 358
    return-void
.end method

.method public prepareGetIdByStationURL()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "select _id from station where station_url = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->selectIdByStationURLStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 362
    return-void
.end method

.method public prepareGetStationIdByStationId()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "select _id from station where _id = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->selectStationIdByStationId:Landroid/database/sqlite/SQLiteStatement;

    .line 366
    return-void
.end method

.method public prepareInsertStation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "insert into station(callletters, ccstationid, name , ads_gateway_dart_url_v2, description, is_talk, logo_url, station_url, stream_url_v2, stream_url_rtsp, frequency, band ) values (?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 496
    return-void
.end method

.method public prepareInsertStationCity()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "insert into stationcity(stationid, cityid) values (?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationCityStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 370
    return-void
.end method

.method public prepareInsertStationFormat()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "insert into stationformat(stationid, formatid) values (?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationFormatStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 374
    return-void
.end method

.method public preparedGetIdByStreamId()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "select _id from station where ccstationid = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->selectIdByStreamId:Landroid/database/sqlite/SQLiteStatement;

    .line 354
    return-void
.end method

.method public removeLocalStationQuery()Ljava/lang/String;
    .locals 8

    .prologue
    .line 830
    const-string v3, ""

    .line 833
    .local v3, "query":Ljava/lang/String;
    sget-object v5, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocal:Lcom/clearchannel/iheartradio/model/IHRLocal;

    if-eqz v5, :cond_0

    .line 834
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v2, "localStationsCallletters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocal:Lcom/clearchannel/iheartradio/model/IHRLocal;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/model/IHRLocal;->getCallLetters()Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 836
    .end local p0    # "this":Lcom/clearchannel/iheartradio/db/DBStation;
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 840
    const-string v4, " s.callletters != \'%s\' "

    .line 842
    .local v4, "selection":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 849
    .end local v0    # "i":I
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "localStationsCallletters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "selection":Ljava/lang/String;
    :cond_0
    return-object v3

    .line 837
    .restart local v1    # "it":Ljava/util/Iterator;
    .restart local v2    # "localStationsCallletters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 843
    .restart local v0    # "i":I
    .restart local v4    # "selection":Ljava/lang/String;
    :cond_2
    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 844
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 842
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public selectAllStations()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRStation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 379
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRStation;>;"
    const/4 v8, 0x0

    .line 383
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "station"

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "callletters"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "is_talk"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "logo_url"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "ccstationid"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "station_url"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 384
    const-string v4, "stream_url_rtsp"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "stream_url_v2"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "ads_gateway_dart_url_v2"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name desc"

    .line 383
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 389
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    :cond_0
    new-instance v11, Lcom/clearchannel/iheartradio/model/IHRStation;

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 392
    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x4

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x5

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x6

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 393
    const/4 v2, 0x7

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x8

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, ""

    aput-object v2, v0, v1

    .line 391
    invoke-direct {v11, v0}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>([Ljava/lang/String;)V

    .line 394
    .local v11, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 390
    if-nez v0, :cond_0

    .line 400
    .end local v11    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 401
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 405
    :cond_2
    return-object v10

    .line 385
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 386
    .local v9, "e":Ljava/lang/Exception;
    new-instance v0, Landroid/database/SQLException;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 398
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v0, Landroid/database/SQLException;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 400
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 401
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 404
    :cond_3
    throw v0
.end method

.method public selectStationByCallLeters()Ljava/util/List;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 475
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 478
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "station"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 479
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 480
    if-nez v0, :cond_0

    .line 487
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 488
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 491
    :cond_2
    return-object v10

    .line 484
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 485
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v0, Landroid/database/SQLException;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 487
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 488
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 490
    :cond_3
    throw v0
.end method

.method public selectStationByCallLetters(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRStation;
    .locals 8
    .param p1, "callLetters"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 581
    const/4 v5, 0x0

    .line 582
    .local v5, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    .line 583
    .local v2, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 584
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "select callletters, ccstationid, name, ads_gateway_dart_url_v2, description, is_talk, logo_url, station_url, stream_url_rtsp from station where callletters = \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 586
    .local v4, "select":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 587
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 588
    const/16 v6, 0x15

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    .line 589
    const-string v7, ""

    aput-object v7, v3, v6

    const/4 v6, 0x2

    .line 590
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x3

    .line 591
    const/4 v7, 0x4

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x4

    .line 592
    const-string v7, ""

    aput-object v7, v3, v6

    const/4 v6, 0x5

    .line 593
    const-string v7, ""

    aput-object v7, v3, v6

    const/4 v6, 0x6

    .line 594
    const-string v7, ""

    aput-object v7, v3, v6

    const/4 v6, 0x7

    .line 595
    const-string v7, ""

    aput-object v7, v3, v6

    const/16 v6, 0x8

    .line 596
    const-string v7, ""

    aput-object v7, v3, v6

    const/16 v6, 0x9

    .line 597
    const/4 v7, 0x5

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0xa

    .line 598
    const/4 v7, 0x6

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0xb

    .line 599
    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0xc

    .line 600
    const/4 v7, 0x1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0xd

    .line 601
    const/4 v7, 0x7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0xe

    .line 602
    const/16 v7, 0x8

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0xf

    .line 603
    const-string v7, ""

    aput-object v7, v3, v6

    const/16 v6, 0x10

    .line 604
    const-string v7, ""

    aput-object v7, v3, v6

    const/16 v6, 0x11

    .line 605
    const-string v7, ""

    aput-object v7, v3, v6

    const/16 v6, 0x12

    .line 606
    const-string v7, ""

    aput-object v7, v3, v6

    const/16 v6, 0x13

    .line 607
    const-string v7, ""

    aput-object v7, v3, v6

    const/16 v6, 0x14

    .line 608
    const-string v7, ""

    aput-object v7, v3, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    .end local v2    # "result":[Ljava/lang/String;
    .local v3, "result":[Ljava/lang/String;
    :try_start_1
    new-instance v5, Lcom/clearchannel/iheartradio/model/IHRStation;

    .end local v5    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    invoke-direct {v5, v3}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v5    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    move-object v2, v3

    .line 614
    .end local v3    # "result":[Ljava/lang/String;
    .restart local v2    # "result":[Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 615
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 619
    :cond_1
    return-object v5

    .line 611
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 612
    .end local v5    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    new-instance v6, Landroid/database/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 613
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 614
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_2

    .line 615
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 617
    :cond_2
    throw v6

    .line 613
    .end local v2    # "result":[Ljava/lang/String;
    .restart local v3    # "result":[Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "result":[Ljava/lang/String;
    .restart local v2    # "result":[Ljava/lang/String;
    goto :goto_1

    .line 611
    .end local v2    # "result":[Ljava/lang/String;
    .restart local v3    # "result":[Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v1, v6

    move-object v2, v3

    .end local v3    # "result":[Ljava/lang/String;
    .restart local v2    # "result":[Ljava/lang/String;
    goto :goto_0
.end method

.method public selectStationByStationID(J)Lcom/clearchannel/iheartradio/model/IHRStation;
    .locals 11
    .param p1, "stationId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 439
    const/4 v3, 0x0

    .line 440
    .local v3, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    .line 441
    .local v1, "result":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "select callletters, ccstationid, name, ads_gateway_dart_url_v2, description, is_talk, logo_url, station_url, stream_url_rtsp from station where ccstationid = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "select":Ljava/lang/String;
    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 443
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 444
    const/16 v4, 0x15

    new-array v1, v4, [Ljava/lang/String;

    .end local v1    # "result":[Ljava/lang/String;
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    .line 445
    const-string v4, ""

    aput-object v4, v1, v7

    .line 446
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    .line 447
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v9

    .line 448
    const-string v4, ""

    aput-object v4, v1, v10

    const/4 v4, 0x5

    .line 449
    const-string v5, ""

    aput-object v5, v1, v4

    const/4 v4, 0x6

    .line 450
    const-string v5, ""

    aput-object v5, v1, v4

    const/4 v4, 0x7

    .line 451
    const-string v5, ""

    aput-object v5, v1, v4

    const/16 v4, 0x8

    .line 452
    const-string v5, ""

    aput-object v5, v1, v4

    const/16 v4, 0x9

    .line 453
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xa

    .line 454
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xb

    .line 455
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xc

    .line 456
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xd

    .line 457
    const/4 v5, 0x7

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xe

    .line 458
    const/16 v5, 0x8

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xf

    .line 459
    const-string v5, ""

    aput-object v5, v1, v4

    const/16 v4, 0x10

    .line 460
    const-string v5, ""

    aput-object v5, v1, v4

    const/16 v4, 0x11

    .line 461
    const-string v5, ""

    aput-object v5, v1, v4

    const/16 v4, 0x12

    .line 462
    const-string v5, ""

    aput-object v5, v1, v4

    const/16 v4, 0x13

    .line 463
    const-string v5, ""

    aput-object v5, v1, v4

    const/16 v4, 0x14

    .line 464
    const-string v5, ""

    aput-object v5, v1, v4

    .line 465
    .restart local v1    # "result":[Ljava/lang/String;
    new-instance v3, Lcom/clearchannel/iheartradio/model/IHRStation;

    .end local v3    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    invoke-direct {v3, v1}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>([Ljava/lang/String;)V

    .line 467
    .restart local v3    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 468
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 471
    :cond_1
    return-object v3
.end method

.method public selectStationByStationId(J)Lcom/clearchannel/iheartradio/model/IHRStation;
    .locals 8
    .param p1, "stationId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 539
    const/4 v5, 0x0

    .line 540
    .local v5, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    .line 541
    .local v2, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 542
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "select callletters, ccstationid, name, ads_gateway_dart_url_v2, description, is_talk, logo_url, station_url, stream_url_rtsp from station where ccstationid = \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 544
    .local v4, "select":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 545
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 546
    const/16 v6, 0x15

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    .line 547
    const-string v7, ""

    aput-object v7, v3, v6

    const/4 v6, 0x2

    .line 548
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x3

    .line 549
    const/4 v7, 0x4

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x4

    .line 550
    const-string v7, ""

    aput-object v7, v3, v6

    const/4 v6, 0x5

    .line 551
    const-string v7, ""

    aput-object v7, v3, v6

    const/4 v6, 0x6

    .line 552
    const-string v7, ""

    aput-object v7, v3, v6

    const/4 v6, 0x7

    .line 553
    const-string v7, ""

    aput-object v7, v3, v6

    const/16 v6, 0x8

    .line 554
    const-string v7, ""

    aput-object v7, v3, v6

    const/16 v6, 0x9

    .line 555
    const/4 v7, 0x5

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0xa

    .line 556
    const/4 v7, 0x6

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0xb

    .line 557
    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0xc

    .line 558
    const/4 v7, 0x1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0xd

    .line 559
    const/4 v7, 0x7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0xe

    .line 560
    const/16 v7, 0x8

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0xf

    .line 561
    const-string v7, ""

    aput-object v7, v3, v6

    const/16 v6, 0x10

    .line 562
    const-string v7, ""

    aput-object v7, v3, v6

    const/16 v6, 0x11

    .line 563
    const-string v7, ""

    aput-object v7, v3, v6

    const/16 v6, 0x12

    .line 564
    const-string v7, ""

    aput-object v7, v3, v6

    const/16 v6, 0x13

    .line 565
    const-string v7, ""

    aput-object v7, v3, v6

    const/16 v6, 0x14

    .line 566
    const-string v7, ""

    aput-object v7, v3, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    .end local v2    # "result":[Ljava/lang/String;
    .local v3, "result":[Ljava/lang/String;
    :try_start_1
    new-instance v5, Lcom/clearchannel/iheartradio/model/IHRStation;

    .end local v5    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    invoke-direct {v5, v3}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v5    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    move-object v2, v3

    .line 572
    .end local v3    # "result":[Ljava/lang/String;
    .restart local v2    # "result":[Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 573
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 577
    :cond_1
    return-object v5

    .line 569
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 570
    .end local v5    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    new-instance v6, Landroid/database/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 571
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 572
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_2

    .line 573
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 575
    :cond_2
    throw v6

    .line 571
    .end local v2    # "result":[Ljava/lang/String;
    .restart local v3    # "result":[Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "result":[Ljava/lang/String;
    .restart local v2    # "result":[Ljava/lang/String;
    goto :goto_1

    .line 569
    .end local v2    # "result":[Ljava/lang/String;
    .restart local v3    # "result":[Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v1, v6

    move-object v2, v3

    .end local v3    # "result":[Ljava/lang/String;
    .restart local v2    # "result":[Ljava/lang/String;
    goto :goto_0
.end method

.method public selectStationsByCityId(J)Ljava/util/List;
    .locals 7
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRStation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 409
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v3, "stations":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRStation;>;"
    const/4 v0, 0x0

    .line 413
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "select callletters ,description ,is_talk ,logo_url ,name ,ccstationid ,station_url , stream_url_rtsp ,stream_url_v2, ads_gateway_dart_url_v2 left join stationcity sc on station._id = sc.stationid where sc.cityid = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 413
    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 420
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 422
    :cond_0
    new-instance v2, Lcom/clearchannel/iheartradio/model/IHRStation;

    const/16 v4, 0x15

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x9

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 423
    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, ""

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, ""

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const/4 v6, 0x4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const/4 v6, 0x5

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const/4 v6, 0x6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xe

    .line 424
    const/4 v6, 0x7

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const/16 v6, 0x8

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-string v6, ""

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-string v6, ""

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-string v6, ""

    aput-object v6, v4, v5

    const/16 v5, 0x13

    const-string v6, ""

    aput-object v6, v4, v5

    const/16 v5, 0x14

    const-string v6, ""

    aput-object v6, v4, v5

    .line 422
    invoke-direct {v2, v4}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>([Ljava/lang/String;)V

    .line 425
    .local v2, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 421
    if-nez v4, :cond_0

    .line 431
    .end local v2    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 432
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 435
    :cond_2
    return-object v3

    .line 416
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 417
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Landroid/database/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 428
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 429
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Landroid/database/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 430
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 431
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 432
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 434
    :cond_3
    throw v4
.end method

.method public selectStationsBySearch(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRStation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 499
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRStation;>;"
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    .line 501
    .local v2, "result":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "select callletters, ccstationid, name, ads_gateway_dart_url_v2, description, is_talk, logo_url, station_url, stream_url_rtsp from station where name || callletters || description  LIKE \'%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, "select":Ljava/lang/String;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 503
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 505
    :cond_0
    const/16 v5, 0x15

    new-array v2, v5, [Ljava/lang/String;

    .end local v2    # "result":[Ljava/lang/String;
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    .line 506
    const-string v5, ""

    aput-object v5, v2, v8

    .line 507
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v9

    .line 508
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v10

    .line 509
    const-string v5, ""

    aput-object v5, v2, v11

    const/4 v5, 0x5

    .line 510
    const-string v6, ""

    aput-object v6, v2, v5

    const/4 v5, 0x6

    .line 511
    const-string v6, ""

    aput-object v6, v2, v5

    const/4 v5, 0x7

    .line 512
    const-string v6, ""

    aput-object v6, v2, v5

    const/16 v5, 0x8

    .line 513
    const-string v6, ""

    aput-object v6, v2, v5

    const/16 v5, 0x9

    .line 514
    const/4 v6, 0x5

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0xa

    .line 515
    const/4 v6, 0x6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0xb

    .line 516
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0xc

    .line 517
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0xd

    .line 518
    const/4 v6, 0x7

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0xe

    .line 519
    const/16 v6, 0x8

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0xf

    .line 520
    const-string v6, ""

    aput-object v6, v2, v5

    const/16 v5, 0x10

    .line 521
    const-string v6, ""

    aput-object v6, v2, v5

    const/16 v5, 0x11

    .line 522
    const-string v6, ""

    aput-object v6, v2, v5

    const/16 v5, 0x12

    .line 523
    const-string v6, ""

    aput-object v6, v2, v5

    const/16 v5, 0x13

    .line 524
    const-string v6, ""

    aput-object v6, v2, v5

    const/16 v5, 0x14

    .line 525
    const-string v6, ""

    aput-object v6, v2, v5

    .line 526
    .restart local v2    # "result":[Ljava/lang/String;
    new-instance v4, Lcom/clearchannel/iheartradio/model/IHRStation;

    invoke-direct {v4, v2}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>([Ljava/lang/String;)V

    .line 528
    .local v4, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    .line 504
    if-nez v5, :cond_0

    .line 531
    .end local v4    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 532
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 535
    :cond_2
    return-object v1
.end method

.method public updateStation(Lcom/clearchannel/iheartradio/model/IHRStation;Z)V
    .locals 10
    .param p1, "station"    # Lcom/clearchannel/iheartradio/model/IHRStation;
    .param p2, "prepare"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 158
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 161
    .local v2, "frequency":D
    const/16 v6, 0x12

    :try_start_0
    invoke-virtual {p1, v6}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 168
    :goto_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v4, "initialValues":Landroid/content/ContentValues;
    const-string v7, "callletters"

    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v7, "name"

    const/16 v6, 0xb

    invoke-virtual {p1, v6}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v7, "ads_gateway_dart_url_v2"

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v7, "description"

    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v7, "is_talk"

    const/16 v6, 0x9

    invoke-virtual {p1, v6}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v7, "logo_url"

    const/16 v6, 0xa

    invoke-virtual {p1, v6}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v7, "station_url"

    const/16 v6, 0xd

    invoke-virtual {p1, v6}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v7, "stream_url_v2"

    const/16 v6, 0xf

    invoke-virtual {p1, v6}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v7, "stream_url_rtsp"

    const/16 v6, 0xe

    invoke-virtual {p1, v6}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v6, "frequency"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 181
    const-string v0, ""

    .line 183
    .local v0, "band":Ljava/lang/String;
    const/16 v6, 0x15

    invoke-virtual {p1, v6}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 185
    .local v5, "originalBand":Ljava/lang/String;
    const-string v6, "DIGITAL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 186
    const-string v0, "2IP"

    .line 196
    :goto_1
    const-string v6, "band"

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v6, p0, Lcom/clearchannel/iheartradio/db/DBStation;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "station"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ccstationid ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0xc

    invoke-virtual {p1, v9}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/db/DBStation;
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 201
    return-void

    .line 163
    .end local v0    # "band":Ljava/lang/String;
    .end local v4    # "initialValues":Landroid/content/ContentValues;
    .end local v5    # "originalBand":Ljava/lang/String;
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/db/DBStation;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 165
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v6, "DBStation"

    const-string v7, "Bad frequency number while inserting station record"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 187
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "band":Ljava/lang/String;
    .restart local v4    # "initialValues":Landroid/content/ContentValues;
    .restart local v5    # "originalBand":Ljava/lang/String;
    :cond_0
    const-string v6, "FM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 188
    const-string v0, "0FM"

    goto :goto_1

    .line 189
    :cond_1
    const-string v6, "AM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 190
    const-string v0, "1AM"

    goto :goto_1

    .line 192
    :cond_2
    const-string v0, "3XX"

    goto :goto_1
.end method
