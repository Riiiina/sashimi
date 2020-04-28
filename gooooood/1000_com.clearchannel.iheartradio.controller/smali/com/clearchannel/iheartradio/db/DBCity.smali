.class public Lcom/clearchannel/iheartradio/db/DBCity;
.super Lcom/clearchannel/iheartradio/db/DBBase;
.source "DBCity.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting:[I = null

.field private static final FIND_CITY_ID_BY_NAME:Ljava/lang/String; = "select _id from city where city.city = ?"

.field public static ID:Ljava/lang/String; = null

.field private static final INSERT_CITY:Ljava/lang/String; = "insert into city(stateid, city, latitude, longitude) values (?,?,?,?)"

.field public static LATITUDE:Ljava/lang/String;

.field public static LONGITUDE:Ljava/lang/String;

.field public static NAME:Ljava/lang/String;

.field public static STATEID:Ljava/lang/String;


# instance fields
.field private findCityIdByNameStmt:Landroid/database/sqlite/SQLiteStatement;

.field private insertCityStmt:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting()[I
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/clearchannel/iheartradio/db/DBCity;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting:[I

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
    sput-object v0, Lcom/clearchannel/iheartradio/db/DBCity;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting:[I

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
    const-string v0, "city"

    sput-object v0, Lcom/clearchannel/iheartradio/db/DBCity;->NAME:Ljava/lang/String;

    .line 19
    const-string v0, "stateid"

    sput-object v0, Lcom/clearchannel/iheartradio/db/DBCity;->STATEID:Ljava/lang/String;

    .line 20
    const-string v0, "latitude"

    sput-object v0, Lcom/clearchannel/iheartradio/db/DBCity;->LATITUDE:Ljava/lang/String;

    .line 21
    const-string v0, "longitude"

    sput-object v0, Lcom/clearchannel/iheartradio/db/DBCity;->LONGITUDE:Ljava/lang/String;

    .line 22
    const-string v0, "_id"

    sput-object v0, Lcom/clearchannel/iheartradio/db/DBCity;->ID:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/db/DBBase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    return-void
.end method


# virtual methods
.method public deleteAllCities()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCity;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "city"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public findCitiesByStateId(I)Ljava/util/List;
    .locals 11
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
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
    .line 62
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 65
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCity;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "city"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "city"

    aput-object v4, v2, v3

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stateid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "city asc"

    .line 65
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 67
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 68
    if-nez v0, :cond_0

    .line 75
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_2
    return-object v10

    .line 72
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 73
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v0, Landroid/database/SQLException;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 75
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 76
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_3
    throw v0
.end method

.method public findCityIdByName(Ljava/lang/String;)I
    .locals 2
    .param p1, "city"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCity;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "select _id from city where city.city = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCity;->findCityIdByNameStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 57
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCity;->findCityIdByNameStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCity;->findCityIdByNameStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getCityStationList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRCity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRCity;>;"
    const-wide/16 v2, -0x1

    .line 87
    .local v2, "city_id":J
    const/4 v0, 0x0

    .line 88
    .local v0, "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    const/4 v7, 0x0

    .line 89
    .local v7, "national":Lcom/clearchannel/iheartradio/model/IHRCity;
    const/4 v4, 0x0

    .line 90
    .local v4, "cursor":Landroid/database/Cursor;
    const-string v8, "select city._id, city, traffic_url, callletters from city left join stationcity on city._id = stationcity.cityid left join station on stationcity.stationid = station._id order by city._id"

    .line 96
    .local v8, "select":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/clearchannel/iheartradio/db/DBCity;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 101
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_4

    .end local p0    # "this":Lcom/clearchannel/iheartradio/db/DBCity;
    :cond_0
    move-object v1, v0

    .line 103
    .end local v0    # "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    .local v1, "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    const/4 v9, 0x0

    :try_start_2
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    cmp-long v9, v2, v9

    if-eqz v9, :cond_8

    .line 105
    if-eqz v1, :cond_1

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/clearchannel/iheartradio/model/IHRCity;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v9, "national"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 106
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_1
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 110
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRCity;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/model/IHRCity;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    .end local v1    # "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    .restart local v0    # "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    const/4 v9, 0x1

    :try_start_3
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/clearchannel/iheartradio/model/IHRCity;->add(Ljava/lang/Object;)Z

    .line 112
    const/4 v9, 0x2

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    const/4 v9, 0x2

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_0
    invoke-virtual {v0, v9}, Lcom/clearchannel/iheartradio/model/IHRCity;->add(Ljava/lang/Object;)Z

    .line 113
    const/4 v9, 0x3

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/clearchannel/iheartradio/model/IHRCity;->add(Ljava/lang/Object;)Z

    .line 114
    if-eqz v0, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/clearchannel/iheartradio/model/IHRCity;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v9, "national"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz v7, :cond_2

    .line 115
    const/4 v9, 0x2

    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/model/IHRCity;->size()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Lcom/clearchannel/iheartradio/model/IHRCity;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/clearchannel/iheartradio/model/IHRCity;->addAll(Ljava/util/Collection;)Z

    .line 121
    :cond_2
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/clearchannel/iheartradio/model/IHRCity;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v9, "national"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 122
    move-object v7, v0

    .line 124
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    .line 102
    if-nez v9, :cond_0

    .line 127
    :cond_4
    if-eqz v0, :cond_5

    .line 128
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    :cond_5
    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_6

    .line 134
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 137
    :cond_6
    return-object v6

    .line 97
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/db/DBCity;
    :catch_0
    move-exception v9

    move-object v5, v9

    .line 98
    .local v5, "e":Ljava/lang/Exception;
    new-instance v9, Landroid/database/SQLException;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 112
    .end local v5    # "e":Ljava/lang/Exception;
    .end local p0    # "this":Lcom/clearchannel/iheartradio/db/DBCity;
    :cond_7
    :try_start_4
    const-string v9, ""
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 119
    .end local v0    # "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    .restart local v1    # "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    :cond_8
    const/4 v9, 0x3

    :try_start_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/clearchannel/iheartradio/model/IHRCity;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v0, v1

    .end local v1    # "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    .restart local v0    # "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    goto :goto_1

    .line 130
    :catch_1
    move-exception v9

    move-object v5, v9

    .line 131
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    new-instance v9, Landroid/database/SQLException;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 132
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 133
    :goto_3
    if-eqz v4, :cond_9

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_9

    .line 134
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_9
    throw v9

    .line 132
    .end local v0    # "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    .restart local v1    # "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    .restart local v0    # "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    goto :goto_3

    .line 130
    .end local v0    # "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    .restart local v1    # "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    :catch_2
    move-exception v9

    move-object v5, v9

    move-object v0, v1

    .end local v1    # "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    .restart local v0    # "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    goto :goto_2
.end method

.method public getCursorCities(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    .locals 5
    .param p1, "stateid"    # J
    .param p3, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 146
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/clearchannel/iheartradio/db/DBCity;->$SWITCH_TABLE$com$clearchannel$iheartradio$db$DataHelper$Sorting()[I

    move-result-object v2

    invoke-virtual {p3}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 163
    :goto_0
    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 171
    :cond_0
    return-object v0

    .line 150
    :pswitch_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBCity;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select c.*, count(distinct s.name) as nbStations from station s , stationcity sc, city c where  s._id = sc.stationid and sc.cityid = c._id and  c.stateid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " group by city order by name asc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 153
    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBCity;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select c.*, count(distinct s.name) as nbStations from station s , stationcity sc, city c where  s._id = sc.stationid and sc.cityid = c._id and  c.stateid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " group by city order by name desc"

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

    .line 167
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/database/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insertCity(ILjava/lang/String;DDZ)J
    .locals 4
    .param p1, "stateId"    # I
    .param p2, "city"    # Ljava/lang/String;
    .param p3, "lat"    # D
    .param p5, "lng"    # D
    .param p7, "prepare"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 42
    if-eqz p7, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCity;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "insert into city(stateid, city, latitude, longitude) values (?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCity;->insertCityStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 43
    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCity;->insertCityStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 45
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCity;->insertCityStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCity;->insertCityStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 47
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCity;->insertCityStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 48
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCity;->insertCityStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public prepareInsertCity()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCity;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "insert into city(stateid, city, latitude, longitude) values (?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCity;->insertCityStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 39
    return-void
.end method
