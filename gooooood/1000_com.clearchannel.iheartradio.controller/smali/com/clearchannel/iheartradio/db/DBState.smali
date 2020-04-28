.class public Lcom/clearchannel/iheartradio/db/DBState;
.super Lcom/clearchannel/iheartradio/db/DBBase;
.source "DBState.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting:[I = null

.field public static ABBR:Ljava/lang/String; = null

.field private static final FIND_STATE_ID_BY_ABBR:Ljava/lang/String; = "select _id from state where stateabbr = ?;"

.field public static ID:Ljava/lang/String; = null

.field private static final INSERT_STATE:Ljava/lang/String; = "insert into state(state, stateabbr) values (?,?)"

.field public static NAME:Ljava/lang/String;

.field public static NBSTATIONS:Ljava/lang/String;


# instance fields
.field private insertStateStmt:Landroid/database/sqlite/SQLiteStatement;

.field private selectStateIdByAbbrStmt:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting()[I
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/clearchannel/iheartradio/db/DBState;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting:[I

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
    sput-object v0, Lcom/clearchannel/iheartradio/db/DBState;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting:[I

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
    .line 19
    const-string v0, "state"

    sput-object v0, Lcom/clearchannel/iheartradio/db/DBState;->NAME:Ljava/lang/String;

    .line 20
    const-string v0, "stateabbr"

    sput-object v0, Lcom/clearchannel/iheartradio/db/DBState;->ABBR:Ljava/lang/String;

    .line 21
    const-string v0, "_id"

    sput-object v0, Lcom/clearchannel/iheartradio/db/DBState;->ID:Ljava/lang/String;

    .line 22
    const-string v0, "nbstations"

    sput-object v0, Lcom/clearchannel/iheartradio/db/DBState;->NBSTATIONS:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/db/DBBase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 33
    return-void
.end method


# virtual methods
.method public deleteAllStates()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBState;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "state"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public findStateIdByAbbr(Ljava/lang/String;)I
    .locals 2
    .param p1, "abbr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBState;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "select _id from state where stateabbr = ?;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBState;->selectStateIdByAbbrStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 116
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBState;->selectStateIdByAbbrStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBState;->selectStateIdByAbbrStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getCursorAllStates(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    .locals 5
    .param p1, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 127
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/clearchannel/iheartradio/db/DBState;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 144
    :goto_0
    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 152
    :cond_0
    return-object v0

    .line 131
    :pswitch_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBState;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select  st.*, count(distinct s.name) as nbStations from station s, city c, stationcity sc, state st, format f, stationformat sf where s._id = sc.stationid and c._id = sc.cityid and st._id = c.stateid and s._id= sf.stationid and sf.formatid = f._id group by state order by state asc"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 134
    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBState;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select  st.*, count(distinct s.name) as nbStations from station s, city c, stationcity sc, state st, format f, stationformat sf where s._id = sc.stationid and c._id = sc.cityid and st._id = c.stateid and s._id= sf.stationid and sf.formatid = f._id group by state order by state desc"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/database/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCursorState(J)Landroid/database/Cursor;
    .locals 5
    .param p1, "stateid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 196
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBState;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select * from state s  where s._id ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    :goto_0
    return-object v0

    .line 203
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/database/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public getCursorStatesByFormat(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;J)Landroid/database/Cursor;
    .locals 5
    .param p1, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .param p2, "formatID"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 162
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/clearchannel/iheartradio/db/DBState;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 178
    :goto_0
    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 186
    :cond_0
    return-object v0

    .line 166
    :pswitch_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBState;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select  st.*,  count(distinct s.name) as nbStations from station s, city c, stationcity sc, state st, format f, stationformat sf where s._id = sc.stationid and c._id = sc.cityid and st._id = c.stateid and s._id= sf.stationid and sf.formatid = f._id and f._id ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " group by state order by state asc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 168
    goto :goto_0

    .line 172
    :pswitch_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBState;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select  st.*,  count(distinct s.name) as nbStations from station s, city c, stationcity sc, state st, format f, stationformat sf where s._id = sc.stationid and c._id = sc.cityid and st._id = c.stateid and s._id= sf.stationid and sf.formatid = f._id and f._id ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "group by state order by state desc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/database/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insertState(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "state_abbr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBState;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "insert into state(state, stateabbr) values (?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBState;->insertStateStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 37
    if-nez p1, :cond_0

    const-string p1, ""

    .line 38
    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBState;->insertStateStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBState;->insertStateStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBState;->insertStateStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public selectAllStateNames()Ljava/util/List;
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
    .line 49
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 52
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBState;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "state"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "state"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "stateabbr asc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 53
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 54
    if-nez v0, :cond_0

    .line 61
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_2
    return-object v10

    .line 58
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 59
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v0, Landroid/database/SQLException;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 61
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 62
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_3
    throw v0
.end method

.method public selectAllStates()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 73
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBState;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "select _id, state, stateabbr"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    :cond_0
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 75
    if-nez v3, :cond_0

    .line 82
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 83
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_2
    return-object v2

    .line 79
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Landroid/database/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 82
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 83
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_3
    throw v3
.end method

.method public selectStateIdMapKeyedToAbbr()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 97
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBState;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "select _id, stateabbr from state"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    :cond_0
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 99
    if-nez v3, :cond_0

    .line 106
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 107
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_2
    return-object v2

    .line 103
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Landroid/database/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 106
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 107
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 109
    :cond_3
    throw v3
.end method
