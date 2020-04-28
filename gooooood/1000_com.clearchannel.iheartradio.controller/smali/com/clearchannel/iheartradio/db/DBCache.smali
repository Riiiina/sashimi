.class public Lcom/clearchannel/iheartradio/db/DBCache;
.super Lcom/clearchannel/iheartradio/db/DBBase;
.source "DBCache.java"


# static fields
.field private static final INSERT_CACHE:Ljava/lang/String; = "insert into cache(uri, path, timestamp) values (?,?,?)"

.field private static final SELECT_CACHE_PATH_BY_URL:Ljava/lang/String; = "select path from cache where uri = ?"


# instance fields
.field private insertCacheStmt:Landroid/database/sqlite/SQLiteStatement;

.field private selectCachebyUrl:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/db/DBBase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 26
    const-string v0, "insert into cache(uri, path, timestamp) values (?,?,?)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCache;->insertCacheStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 27
    return-void
.end method


# virtual methods
.method public deleteAllCache()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public insertCacheFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "insert into cache (uri, path, timestamp) values (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    const-string v1, "datetime(\'now\'));"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DBCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public selectAllCacheUri()Ljava/util/List;
    .locals 5
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
    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 56
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DBCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select * from cache "

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    :cond_0
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 58
    if-nez v2, :cond_0

    .line 63
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 64
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 67
    :cond_2
    return-object v1

    .line 62
    :catchall_0
    move-exception v2

    .line 63
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 64
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_3
    throw v2
.end method

.method public selectCacheEntries()Ljava/util/List;
    .locals 5

    .prologue
    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v1, "list":Ljava/util/List;
    const-string v2, "select timestamp from cache"

    .line 73
    .local v2, "select":Ljava/lang/String;
    const/4 v0, 0x0

    .line 75
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DBCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 77
    if-nez v3, :cond_0

    .line 82
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 83
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_2
    return-object v1

    .line 81
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

.method public selectCachePathForUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;,
            Landroid/database/sqlite/SQLiteDoneException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCache;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "select path from cache where uri = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCache;->selectCachebyUrl:Landroid/database/sqlite/SQLiteStatement;

    .line 47
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCache;->selectCachebyUrl:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DBCache;->selectCachebyUrl:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
