.class public Lcom/clearchannel/iheartradio/db/DBFormat;
.super Lcom/clearchannel/iheartradio/db/DBBase;
.source "DBFormat.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting:[I = null

.field public static FORMAT:Ljava/lang/String; = null

.field public static ID:Ljava/lang/String; = null

.field private static final INSERT_FORMAT:Ljava/lang/String; = "insert into format(format) values (?)"

.field public static NBSTATIONS:Ljava/lang/String;


# instance fields
.field private insertFormatStmt:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting()[I
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/clearchannel/iheartradio/db/DBFormat;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting:[I

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
    sput-object v0, Lcom/clearchannel/iheartradio/db/DBFormat;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting:[I

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

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "format"

    sput-object v0, Lcom/clearchannel/iheartradio/db/DBFormat;->FORMAT:Ljava/lang/String;

    .line 19
    const-string v0, "nbstations"

    sput-object v0, Lcom/clearchannel/iheartradio/db/DBFormat;->NBSTATIONS:Ljava/lang/String;

    .line 20
    const-string v0, "_id"

    sput-object v0, Lcom/clearchannel/iheartradio/db/DBFormat;->ID:Ljava/lang/String;

    .line 16
    return-void
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
.method public deleteAllFormats()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBFormat;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "format"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public getCursorFormat(J)Landroid/database/Cursor;
    .locals 5
    .param p1, "formatid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 130
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBFormat;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select * from format f  where f._id ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    return-object v0

    .line 137
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/database/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public getCursorFormatByState(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;J)Landroid/database/Cursor;
    .locals 5
    .param p1, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .param p2, "stateID"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez p1, :cond_0

    sget-object p1, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ASC:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    .line 177
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/clearchannel/iheartradio/db/DBFormat;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 193
    :goto_0
    if-eqz v0, :cond_1

    .line 194
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 203
    :cond_1
    :goto_1
    return-object v0

    .line 181
    :pswitch_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBFormat;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select  f.*,  count(s.name) as nbStations from station s, city c, stationcity sc, state st, format f, stationformat sf where s._id = sc.stationid and c._id = sc.cityid and st._id = c.stateid and s._id= sf.stationid and sf.formatid = f._id and st._id ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and upper(format) not like \'SPORTS\' and upper(format) not like \'NEWS%\' and upper(format) not like \'PERSONALITIES\'  group by format order by state asc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 183
    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBFormat;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select  f.*,  count(s.name) as nbStations from station s, city c, stationcity sc, state st, format f, stationformat sf where s._id = sc.stationid and c._id = sc.cityid and st._id = c.stateid and s._id= sf.stationid and sf.formatid = f._id and st._id ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and upper(format) not like \'SPORTS\' and upper(format) not like \'NEWS%\' and upper(format) not like \'PERSONALITIES\'  group by format order by state desc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 197
    .local v1, "e":Landroid/database/sqlite/SQLiteDoneException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDoneException;->printStackTrace()V

    goto :goto_1

    .line 198
    .end local v1    # "e":Landroid/database/sqlite/SQLiteDoneException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 199
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/database/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCursorFormatID(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 149
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBFormat;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select f.*, count (*) from format f, station s, stationformat sf where s._id = sf.stationid and f._id = sf.formatid and f.format = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    return-object v0

    .line 156
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/database/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public getCursorFormats(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    .locals 5
    .param p1, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez p1, :cond_0

    sget-object p1, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ASC:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    .line 93
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/clearchannel/iheartradio/db/DBFormat;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 110
    :goto_0
    if-eqz v0, :cond_1

    .line 111
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 119
    :cond_1
    :goto_1
    return-object v0

    .line 97
    :pswitch_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBFormat;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select f.*, count (distinct name) as nbStations  from format f, station s, stationformat sf where s._id = sf.stationid and f._id = sf.formatid and upper(format) not like \'SPORTS\' and upper(format) not like \'NEWS%\' and upper(format) not like \'PERSONALITIES\' group by format order by format asc"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 100
    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBFormat;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select f.*, count (distinct name) as nbStations  from format f, station s, stationformat sf where s._id = sf.stationid and f._id = sf.formatid and upper(format) not like \'SPORTS\' and upper(format) not like \'NEWS%\' and upper(format) not like \'PERSONALITIES\' group by format  order by format desc"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/database/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insertFormat(Ljava/lang/String;Z)J
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "prepare"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 38
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBFormat;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "insert into format(format) values (?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBFormat;->insertFormatStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBFormat;->insertFormatStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBFormat;->insertFormatStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public prepareInsertFormat()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBFormat;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "insert into format(format) values (?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBFormat;->insertFormatStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 35
    return-void
.end method

.method public selectAllFormats()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRFormat;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRFormat;>;"
    const/4 v3, 0x0

    .line 50
    .local v3, "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    const-string v0, ""

    .line 51
    .local v0, "currentFormat":Ljava/lang/String;
    const/4 v1, 0x0

    .line 53
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v6, p0, Lcom/clearchannel/iheartradio/db/DBFormat;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "select format, callletters from format left join stationformat sf on format._id = sf.formatid left join station on sf.stationid = station._id"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 54
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move-object v4, v3

    .line 57
    .end local v3    # "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    .local v4, "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 59
    new-instance v3, Lcom/clearchannel/iheartradio/model/IHRFormat;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/model/IHRFormat;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    .end local v4    # "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    .restart local v3    # "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    const/4 v6, 0x0

    :try_start_2
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v3, v0}, Lcom/clearchannel/iheartradio/model/IHRFormat;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :goto_0
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/clearchannel/iheartradio/model/IHRFormat;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 55
    if-nez v6, :cond_0

    .line 71
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 72
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_2
    return-object v5

    .line 68
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 69
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    new-instance v6, Landroid/database/SQLException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 71
    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 72
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_3
    throw v6

    .line 70
    .end local v3    # "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    .restart local v4    # "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    .restart local v3    # "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    goto :goto_2

    .line 68
    .end local v3    # "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    .restart local v4    # "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    :catch_1
    move-exception v6

    move-object v2, v6

    move-object v3, v4

    .end local v4    # "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    .restart local v3    # "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    goto :goto_1

    .end local v3    # "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    .restart local v4    # "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    :cond_4
    move-object v3, v4

    .end local v4    # "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    .restart local v3    # "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    goto :goto_0
.end method
