.class public Lcom/clearchannel/iheartradio/db/DataHelper;
.super Ljava/lang/Object;
.source "DataHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/db/DataHelper$DBHelper;,
        Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "iheartradio.db"

.field private static final DATABASE_VERSION:I = 0x8

.field private static DB_PATH:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "DataHelper"

.field private static versionChanged:Z


# instance fields
.field private context:Landroid/content/Context;

.field protected db:Landroid/database/sqlite/SQLiteDatabase;

.field dbHelper:Lcom/clearchannel/iheartradio/db/DataHelper$DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "/data/data/com.clearchannel.iheartradio.controller/databases/"

    sput-object v0, Lcom/clearchannel/iheartradio/db/DataHelper;->DB_PATH:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/clearchannel/iheartradio/db/DataHelper;->versionChanged:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->context:Landroid/content/Context;

    .line 60
    new-instance v0, Lcom/clearchannel/iheartradio/db/DataHelper$DBHelper;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/db/DataHelper$DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->dbHelper:Lcom/clearchannel/iheartradio/db/DataHelper$DBHelper;

    .line 61
    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0

    .prologue
    .line 44
    sput-boolean p0, Lcom/clearchannel/iheartradio/db/DataHelper;->versionChanged:Z

    return-void
.end method

.method private copyDatabase()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "iheartradio.db"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 156
    .local v1, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/clearchannel/iheartradio/db/DataHelper;->DB_PATH:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "iheartradio.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 158
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 161
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "length":I
    if-gtz v2, :cond_0

    .line 165
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 166
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 167
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 168
    return-void

    .line 162
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private databaseExists()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 135
    const/4 v0, 0x0

    .line 138
    .local v0, "checkDB":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/clearchannel/iheartradio/db/DataHelper;->DB_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "iheartradio.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 138
    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    .line 144
    :goto_0
    return v2

    .line 142
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 144
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static printCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 2194
    const-string v1, "\n"

    .line 2195
    .local v1, "str":Ljava/lang/String;
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2198
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 2201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n----------------------------------------------------------------------------------------------------\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2202
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 2196
    if-nez v2, :cond_0

    .line 2204
    const-string v2, "CURSOR"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    .end local v0    # "i":I
    :cond_1
    return-object v1

    .line 2199
    .restart local v0    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private upgradeDatabase()V
    .locals 24

    .prologue
    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/db/DataHelper;->dbHelper:Lcom/clearchannel/iheartradio/db/DataHelper$DBHelper;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/db/DataHelper$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 174
    sget-boolean v4, Lcom/clearchannel/iheartradio/db/DataHelper;->versionChanged:Z

    if-eqz v4, :cond_2

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->getFavouriteSongsList()Ljava/util/List;

    move-result-object v21

    .line 177
    .local v21, "songs":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->getFavouriteStationsList()Ljava/util/List;

    move-result-object v23

    .line 178
    .local v23, "stations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v4, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ASC:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/db/DataHelper;->getHistoryList(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Ljava/util/List;

    move-result-object v19

    .line 181
    .local v19, "recent":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const-string v4, "DataHelper"

    const-string v5, "Running database upgrade"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->copyDatabase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 191
    const-string v4, "DataHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Database upgraded to version "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 202
    :try_start_2
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    move-result v4

    if-nez v4, :cond_3

    .line 222
    :try_start_3
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c

    move-result v5

    if-nez v5, :cond_4

    .line 241
    :try_start_4
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_11

    move-result v5

    if-nez v5, :cond_5

    .line 263
    .end local v19    # "recent":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .end local v21    # "songs":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .end local v23    # "stations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    return-void

    .line 184
    .restart local v19    # "recent":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v21    # "songs":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v23    # "stations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_0
    move-exception v17

    .line 185
    .local v17, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Error copying database"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 193
    .end local v17    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object/from16 v17, v4

    .line 194
    .local v17, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Error upgrading database"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 195
    .end local v17    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v4

    move-object/from16 v17, v4

    .line 196
    .local v17, "e":Landroid/database/SQLException;
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Error upgrading database"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 197
    .end local v17    # "e":Landroid/database/SQLException;
    :catch_3
    move-exception v4

    move-object/from16 v17, v4

    .line 198
    .local v17, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Error upgrading database"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 202
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/String;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 203
    .local v20, "song":[Ljava/lang/String;
    const-wide/16 v8, -0x1

    .line 205
    .local v8, "mediaId":J
    const/4 v4, 0x3

    :try_start_6
    aget-object v4, v20, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 206
    const/4 v4, 0x0

    aget-object v5, v20, v4

    const/4 v4, 0x1

    aget-object v6, v20, v4

    const/4 v4, 0x2

    aget-object v7, v20, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/clearchannel/iheartradio/db/DataHelper;->insertFavouriteSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_0

    .line 207
    :catch_4
    move-exception v4

    move-object/from16 v17, v4

    .line 208
    .local v17, "e":Ljava/lang/NumberFormatException;
    :try_start_7
    const-string v4, "DataHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception inserting favourite song: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_0

    .line 213
    .end local v8    # "mediaId":J
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    .end local v20    # "song":[Ljava/lang/String;
    :catch_5
    move-exception v4

    move-object/from16 v17, v4

    .line 214
    .local v17, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Error inserting favourite song"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 209
    .end local v17    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v8    # "mediaId":J
    .restart local v20    # "song":[Ljava/lang/String;
    :catch_6
    move-exception v4

    move-object/from16 v17, v4

    .line 210
    .local v17, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    :try_start_8
    const-string v4, "DataHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception inserting favourite song: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    .line 215
    .end local v8    # "mediaId":J
    .end local v17    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    .end local v20    # "song":[Ljava/lang/String;
    :catch_7
    move-exception v4

    move-object/from16 v17, v4

    .line 216
    .local v17, "e":Landroid/database/SQLException;
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Error inserting favourite song"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 217
    .end local v17    # "e":Landroid/database/SQLException;
    :catch_8
    move-exception v4

    move-object/from16 v17, v4

    .line 218
    .local v17, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Error inserting favourite song"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 222
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c

    .line 225
    .local v22, "station":Ljava/lang/Long;
    :try_start_a
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-wide v1, v5

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;->isStationExists(JZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 226
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/db/DataHelper;->insertFavouriteStation(J)V
    :try_end_a
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_a .. :try_end_a} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    goto/16 :goto_1

    .line 228
    :catch_9
    move-exception v5

    move-object/from16 v17, v5

    .line 229
    .local v17, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    :try_start_b
    const-string v5, "DataHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception inserting favourite station: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_a
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    goto/16 :goto_1

    .line 232
    .end local v17    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    .end local v22    # "station":Ljava/lang/Long;
    :catch_a
    move-exception v4

    move-object/from16 v17, v4

    .line 233
    .local v17, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Error inserting favourite station"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    .end local v17    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_b
    move-exception v4

    move-object/from16 v17, v4

    .line 235
    .local v17, "e":Landroid/database/SQLException;
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Error inserting favourite station"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 236
    .end local v17    # "e":Landroid/database/SQLException;
    :catch_c
    move-exception v4

    move-object/from16 v17, v4

    .line 237
    .local v17, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Error inserting favourite station"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 241
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_e
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_11

    .line 242
    .local v18, "item":[Ljava/lang/String;
    const-wide/16 v13, -0x1

    .line 244
    .local v13, "stationId":J
    const/4 v5, 0x2

    :try_start_d
    aget-object v5, v18, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 246
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide v1, v13

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;->isStationExists(JZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 247
    const/4 v5, 0x0

    aget-object v11, v18, v5

    const/4 v5, 0x1

    aget-object v12, v18, v5

    const/4 v5, 0x3

    aget-object v15, v18, v5

    const/4 v5, 0x4

    aget-object v16, v18, v5

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lcom/clearchannel/iheartradio/db/DataHelper;->addRecentStation(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_d
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_d .. :try_end_d} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_e
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_11

    goto/16 :goto_2

    .line 249
    :catch_d
    move-exception v5

    move-object/from16 v17, v5

    .line 250
    .local v17, "e":Ljava/lang/NumberFormatException;
    :try_start_e
    const-string v5, "DataHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception inserting history record: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_e
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_11

    goto/16 :goto_2

    .line 255
    .end local v13    # "stationId":J
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    .end local v18    # "item":[Ljava/lang/String;
    :catch_e
    move-exception v4

    move-object/from16 v17, v4

    .line 256
    .local v17, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Error inserting history record"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 251
    .end local v17    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v13    # "stationId":J
    .restart local v18    # "item":[Ljava/lang/String;
    :catch_f
    move-exception v5

    move-object/from16 v17, v5

    .line 252
    .local v17, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    :try_start_f
    const-string v5, "DataHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception inserting history record: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_e
    .catch Landroid/database/SQLException; {:try_start_f .. :try_end_f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_11

    goto/16 :goto_2

    .line 257
    .end local v13    # "stationId":J
    .end local v17    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    .end local v18    # "item":[Ljava/lang/String;
    :catch_10
    move-exception v4

    move-object/from16 v17, v4

    .line 258
    .local v17, "e":Landroid/database/SQLException;
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Error inserting history record"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 259
    .end local v17    # "e":Landroid/database/SQLException;
    :catch_11
    move-exception v4

    move-object/from16 v17, v4

    .line 260
    .local v17, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Error inserting history record"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public addCacheFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "timestamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1486
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1491
    new-instance v0, Lcom/clearchannel/iheartradio/db/DBCache;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v3}, Lcom/clearchannel/iheartradio/db/DBCache;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1493
    .local v0, "dbCache":Lcom/clearchannel/iheartradio/db/DBCache;
    :try_start_1
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1494
    invoke-virtual {v0, p1, p2}, Lcom/clearchannel/iheartradio/db/DBCache;->insertCacheFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1501
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1502
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1504
    return-void

    .line 1487
    .end local v0    # "dbCache":Lcom/clearchannel/iheartradio/db/DBCache;
    :catch_0
    move-exception v1

    .line 1488
    .local v1, "e":Landroid/database/SQLException;
    new-instance v3, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1496
    .end local v1    # "e":Landroid/database/SQLException;
    .restart local v0    # "dbCache":Lcom/clearchannel/iheartradio/db/DBCache;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 1497
    .local v2, "sqle":Landroid/database/SQLException;
    :try_start_2
    new-instance v3, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1500
    .end local v2    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    .line 1501
    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1502
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1503
    throw v3

    .line 1498
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 1499
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public addRecentStation(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "artist"    # Ljava/lang/String;
    .param p2, "song"    # Ljava/lang/String;
    .param p3, "stationid"    # J
    .param p5, "stationImageuri"    # Ljava/lang/String;
    .param p6, "songImageuri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 664
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    if-nez p1, :cond_0

    .line 670
    const-string p1, ""

    .line 672
    :cond_0
    if-nez p2, :cond_1

    .line 673
    const-string p2, ""

    .line 676
    :cond_1
    new-instance v0, Lcom/clearchannel/iheartradio/db/DBHistory;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/db/DBHistory;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 678
    .local v0, "dbHistory":Lcom/clearchannel/iheartradio/db/DBHistory;
    const-wide/16 v8, -0x1

    .line 679
    .local v8, "id":J
    :try_start_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 681
    :try_start_2
    invoke-virtual {v0, p3, p4}, Lcom/clearchannel/iheartradio/db/DBHistory;->selectHistoryIdForStationId(J)J
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v8

    .line 689
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-gez v1, :cond_2

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 690
    :try_start_3
    invoke-virtual/range {v0 .. v6}, Lcom/clearchannel/iheartradio/db/DBHistory;->insertHistory(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)J

    .line 696
    :goto_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 702
    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 703
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 705
    return-void

    .line 665
    .end local v0    # "dbHistory":Lcom/clearchannel/iheartradio/db/DBHistory;
    .end local v8    # "id":J
    :catch_0
    move-exception v7

    .line 666
    .local v7, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v7}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 682
    .end local v7    # "e":Landroid/database/SQLException;
    .restart local v0    # "dbHistory":Lcom/clearchannel/iheartradio/db/DBHistory;
    .restart local v8    # "id":J
    :catch_1
    move-exception v7

    .line 684
    .local v7, "e":Landroid/database/sqlite/SQLiteDoneException;
    :try_start_4
    const-string v1, "DataHelper"

    const-string v2, "No history record found."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 697
    .end local v7    # "e":Landroid/database/sqlite/SQLiteDoneException;
    :catch_2
    move-exception v1

    move-object v10, v1

    .line 698
    .local v10, "sqle":Landroid/database/SQLException;
    :try_start_5
    new-instance v1, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v10}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 701
    .end local v10    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    .line 702
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 703
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 704
    throw v1

    .line 685
    :catch_3
    move-exception v7

    .line 686
    .local v7, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v1, "DataHelper"

    const-string v2, "Exception while trying to add recent station."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 699
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    move-object v7, v1

    .line 700
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v1, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-wide v5, v8

    .line 693
    :try_start_8
    invoke-virtual/range {v0 .. v6}, Lcom/clearchannel/iheartradio/db/DBHistory;->updateHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public closeDB()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->dbHelper:Lcom/clearchannel/iheartradio/db/DataHelper$DBHelper;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/db/DataHelper$DBHelper;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 91
    return-void
.end method

.method public closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->dbHelper:Lcom/clearchannel/iheartradio/db/DataHelper$DBHelper;

    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/db/DataHelper$DBHelper;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 82
    return-void
.end method

.method public createDatabase()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 116
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->databaseExists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->dbHelper:Lcom/clearchannel/iheartradio/db/DataHelper$DBHelper;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/DataHelper$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 121
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->copyDatabase()V

    .line 122
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 123
    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 124
    :cond_0
    const-string v1, "DataHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "New database version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " created"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 127
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Error copying database"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->upgradeDatabase()V

    goto :goto_0
.end method

.method public deleteAllCache()V
    .locals 2

    .prologue
    .line 1468
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 1469
    new-instance v0, Lcom/clearchannel/iheartradio/db/DBCache;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/db/DBCache;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1471
    .local v0, "dbCache":Lcom/clearchannel/iheartradio/db/DBCache;
    :try_start_0
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/DBCache;->deleteAllCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1475
    return-void

    .line 1472
    :catchall_0
    move-exception v1

    .line 1473
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1474
    throw v1
.end method

.method public deleteAllHistory()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1454
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 1455
    new-instance v0, Lcom/clearchannel/iheartradio/db/DBHistory;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v2}, Lcom/clearchannel/iheartradio/db/DBHistory;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1457
    .local v0, "dbHistory":Lcom/clearchannel/iheartradio/db/DBHistory;
    :try_start_0
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/DBHistory;->deleteAllHistory()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1465
    return-void

    .line 1458
    :catch_0
    move-exception v1

    .line 1459
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1462
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 1463
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1464
    throw v2

    .line 1460
    :catch_1
    move-exception v1

    .line 1461
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public flagFavouriteSongForRemoval(J)V
    .locals 4
    .param p1, "mediaId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1316
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 1317
    new-instance v1, Lcom/clearchannel/iheartradio/db/DBFavourite;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1319
    .local v1, "fav":Lcom/clearchannel/iheartradio/db/DBFavourite;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, p2, v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;->updateSongActiveStatus(JZ)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1327
    return-void

    .line 1320
    :catch_0
    move-exception v0

    .line 1321
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1324
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 1325
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1326
    throw v2

    .line 1322
    :catch_1
    move-exception v0

    .line 1323
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

.method public flagFavouriteStationForRemoval(J)V
    .locals 4
    .param p1, "stationId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1398
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 1399
    new-instance v1, Lcom/clearchannel/iheartradio/db/DBFavourite;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1401
    .local v1, "fav":Lcom/clearchannel/iheartradio/db/DBFavourite;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, p2, v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;->updateStationActiveStatus(JZ)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1407
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1409
    return-void

    .line 1402
    :catch_0
    move-exception v0

    .line 1403
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1406
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 1407
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1408
    throw v2

    .line 1404
    :catch_1
    move-exception v0

    .line 1405
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

.method public getAutoplayStation()Lcom/clearchannel/iheartradio/model/IHRStation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 748
    const/4 v3, 0x0

    .line 750
    .local v3, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    new-instance v0, Lcom/clearchannel/iheartradio/db/DBFavourite;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v4}, Lcom/clearchannel/iheartradio/db/DBFavourite;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 757
    .local v0, "dbFavourite":Lcom/clearchannel/iheartradio/db/DBFavourite;
    :try_start_1
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/DBFavourite;->getAutoplayStation()Lcom/clearchannel/iheartradio/model/IHRStation;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 765
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 767
    return-object v3

    .line 751
    .end local v0    # "dbFavourite":Lcom/clearchannel/iheartradio/db/DBFavourite;
    :catch_0
    move-exception v1

    .line 752
    .local v1, "e":Landroid/database/SQLException;
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 758
    .end local v1    # "e":Landroid/database/SQLException;
    .restart local v0    # "dbFavourite":Lcom/clearchannel/iheartradio/db/DBFavourite;
    :catch_1
    move-exception v2

    .line 759
    .local v2, "sqle":Landroid/database/SQLException;
    :try_start_2
    const-string v4, "DataHelper"

    const-string v5, "Exception while trying get autoplay station."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 764
    .end local v2    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 765
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 766
    throw v4

    .line 761
    :catch_2
    move-exception v1

    .line 762
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "DataHelper"

    const-string v5, "Exception while trying get autoplay station."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getCursoStationsSearchBy(Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "searchCriteria"    # Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;
    .param p2, "searchedValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1850
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1851
    .local v2, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Lcom/clearchannel/iheartradio/db/DBStation;

    invoke-direct {v3, v2}, Lcom/clearchannel/iheartradio/db/DBStation;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1852
    .local v3, "station":Lcom/clearchannel/iheartradio/db/DBStation;
    const/4 v0, 0x0

    .line 1854
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v3, p1, p2}, Lcom/clearchannel/iheartradio/db/DBStation;->getCursoStationsSearchBy(Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1861
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1864
    return-object v0

    .line 1856
    :catch_0
    move-exception v1

    .line 1857
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1860
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 1861
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1862
    throw v4

    .line 1858
    :catch_1
    move-exception v1

    .line 1859
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getCursor20Recent(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    .locals 6
    .param p1, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1612
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1613
    .local v3, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/clearchannel/iheartradio/db/DBHistory;

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/DBHistory;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1614
    .local v2, "recent":Lcom/clearchannel/iheartradio/db/DBHistory;
    const/4 v0, 0x0

    .line 1616
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/clearchannel/iheartradio/db/DBHistory;->getCursorAllHistory(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1622
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1625
    return-object v0

    .line 1617
    :catch_0
    move-exception v1

    .line 1618
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1621
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 1622
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1623
    throw v4

    .line 1619
    :catch_1
    move-exception v1

    .line 1620
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getCursorAllFormats(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    .locals 6
    .param p1, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1795
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1796
    .local v3, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/clearchannel/iheartradio/db/DBFormat;

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/DBFormat;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1797
    .local v2, "format":Lcom/clearchannel/iheartradio/db/DBFormat;
    const/4 v0, 0x0

    .line 1799
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/clearchannel/iheartradio/db/DBFormat;->getCursorFormats(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1805
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1808
    return-object v0

    .line 1800
    :catch_0
    move-exception v1

    .line 1801
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1804
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 1805
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1806
    throw v4

    .line 1802
    :catch_1
    move-exception v1

    .line 1803
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getCursorAllStates(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    .locals 6
    .param p1, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1771
    .local v2, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Lcom/clearchannel/iheartradio/db/DBState;

    invoke-direct {v3, v2}, Lcom/clearchannel/iheartradio/db/DBState;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1772
    .local v3, "state":Lcom/clearchannel/iheartradio/db/DBState;
    const/4 v0, 0x0

    .line 1774
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/clearchannel/iheartradio/db/DBState;->getCursorAllStates(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1780
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1783
    return-object v0

    .line 1775
    :catch_0
    move-exception v1

    .line 1776
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1779
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 1780
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1781
    throw v4

    .line 1777
    :catch_1
    move-exception v1

    .line 1778
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getCursorAllStations(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    .locals 6
    .param p1, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1587
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1588
    .local v2, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Lcom/clearchannel/iheartradio/db/DBStation;

    invoke-direct {v3, v2}, Lcom/clearchannel/iheartradio/db/DBStation;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1589
    .local v3, "station":Lcom/clearchannel/iheartradio/db/DBStation;
    const/4 v0, 0x0

    .line 1591
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/clearchannel/iheartradio/db/DBStation;->getCursorAllStations(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1597
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1600
    return-object v0

    .line 1592
    :catch_0
    move-exception v1

    .line 1593
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1596
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 1597
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1598
    throw v4

    .line 1594
    :catch_1
    move-exception v1

    .line 1595
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getCursorAllVideos(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    .locals 6
    .param p1, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1745
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1746
    .local v2, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Lcom/clearchannel/iheartradio/db/DBVideo;

    invoke-direct {v3, v2}, Lcom/clearchannel/iheartradio/db/DBVideo;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1747
    .local v3, "video":Lcom/clearchannel/iheartradio/db/DBVideo;
    const/4 v0, 0x0

    .line 1749
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/clearchannel/iheartradio/db/DBVideo;->getCursorAllVideos(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1755
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1758
    return-object v0

    .line 1750
    :catch_0
    move-exception v1

    .line 1751
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1754
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 1755
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1756
    throw v4

    .line 1752
    :catch_1
    move-exception v1

    .line 1753
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getCursorCities(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    .locals 6
    .param p1, "stateid"    # J
    .param p3, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1821
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1822
    .local v3, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Lcom/clearchannel/iheartradio/db/DBCity;

    invoke-direct {v0, v3}, Lcom/clearchannel/iheartradio/db/DBCity;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1823
    .local v0, "city":Lcom/clearchannel/iheartradio/db/DBCity;
    const/4 v1, 0x0

    .line 1825
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/clearchannel/iheartradio/db/DBCity;->getCursorCities(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1831
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1834
    return-object v1

    .line 1826
    :catch_0
    move-exception v2

    .line 1827
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1830
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 1831
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1832
    throw v4

    .line 1828
    :catch_1
    move-exception v2

    .line 1829
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getCursorFavouriteSongs()Landroid/database/Cursor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1923
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1924
    .local v3, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/clearchannel/iheartradio/db/DBFavourite;

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/DBFavourite;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1925
    .local v2, "fav":Lcom/clearchannel/iheartradio/db/DBFavourite;
    const/4 v0, 0x0

    .line 1927
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;->getCursorFavouriteSongs()Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1933
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1936
    return-object v0

    .line 1928
    :catch_0
    move-exception v1

    .line 1929
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1932
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 1933
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1934
    throw v4

    .line 1930
    :catch_1
    move-exception v1

    .line 1931
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getCursorFavouriteStations()Landroid/database/Cursor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1874
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1875
    .local v3, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/clearchannel/iheartradio/db/DBFavourite;

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/DBFavourite;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1876
    .local v2, "fav":Lcom/clearchannel/iheartradio/db/DBFavourite;
    const/4 v0, 0x0

    .line 1878
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;->getCursorFavouriteStations()Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1884
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1887
    return-object v0

    .line 1879
    :catch_0
    move-exception v1

    .line 1880
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1883
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 1884
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1885
    throw v4

    .line 1881
    :catch_1
    move-exception v1

    .line 1882
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getCursorFormatByStates(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    .locals 6
    .param p1, "stateID"    # J
    .param p3, "sorting"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 2013
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2014
    .local v3, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/clearchannel/iheartradio/db/DBFormat;

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/DBFormat;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2015
    .local v2, "format":Lcom/clearchannel/iheartradio/db/DBFormat;
    const/4 v0, 0x0

    .line 2017
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v2, p3, p1, p2}, Lcom/clearchannel/iheartradio/db/DBFormat;->getCursorFormatByState(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;J)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2023
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2026
    return-object v0

    .line 2018
    :catch_0
    move-exception v1

    .line 2019
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2022
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 2023
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2024
    throw v4

    .line 2020
    :catch_1
    move-exception v1

    .line 2021
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getCursorStatesByFormat(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    .locals 6
    .param p1, "formatID"    # J
    .param p3, "sorting"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1994
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1995
    .local v2, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Lcom/clearchannel/iheartradio/db/DBState;

    invoke-direct {v3, v2}, Lcom/clearchannel/iheartradio/db/DBState;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1996
    .local v3, "state":Lcom/clearchannel/iheartradio/db/DBState;
    const/4 v0, 0x0

    .line 1998
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v3, p3, p1, p2}, Lcom/clearchannel/iheartradio/db/DBState;->getCursorStatesByFormat(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;J)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2004
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2007
    return-object v0

    .line 1999
    :catch_0
    move-exception v1

    .line 2000
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2003
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 2004
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2005
    throw v4

    .line 2001
    :catch_1
    move-exception v1

    .line 2002
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getCursorStationsByCalllettersAndFormat(Ljava/util/ArrayList;Ljava/lang/String;Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    .locals 6
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
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1974
    .local p1, "stationsCallletters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1975
    .local v3, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Lcom/clearchannel/iheartradio/db/DBStation;

    invoke-direct {v1, v3}, Lcom/clearchannel/iheartradio/db/DBStation;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1976
    .local v1, "dbStation":Lcom/clearchannel/iheartradio/db/DBStation;
    const/4 v0, 0x0

    .line 1978
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/clearchannel/iheartradio/db/DBStation;->getCursorStationsByCalllettersAndFormat(Ljava/util/ArrayList;Ljava/lang/String;Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1985
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1988
    return-object v0

    .line 1980
    :catch_0
    move-exception v2

    .line 1981
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1984
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 1985
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1986
    throw v4

    .line 1982
    :catch_1
    move-exception v2

    .line 1983
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getCursorStationsByStateAndFormat(JJLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;
    .locals 10
    .param p1, "stateID"    # J
    .param p3, "formatID"    # J
    .param p5, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .param p6, "isCommercialFree"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1719
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 1720
    .local v9, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Lcom/clearchannel/iheartradio/db/DBStation;

    invoke-direct {v0, v9}, Lcom/clearchannel/iheartradio/db/DBStation;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1721
    .local v0, "station":Lcom/clearchannel/iheartradio/db/DBStation;
    const/4 v7, 0x0

    .local v7, "cursor":Landroid/database/Cursor;
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move/from16 v6, p6

    .line 1723
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/clearchannel/iheartradio/db/DBStation;->getCursoStationsByStateAndFormat(JJLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1730
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1733
    return-object v7

    .line 1725
    :catch_0
    move-exception v8

    .line 1726
    .local v8, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v1, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v8}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1729
    .end local v8    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    .line 1730
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1731
    throw v1

    .line 1727
    :catch_1
    move-exception v8

    .line 1728
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getCursorStationsCity(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;
    .locals 6
    .param p1, "cityId"    # J
    .param p3, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .param p4, "isCommercialFree"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1670
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1671
    .local v2, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Lcom/clearchannel/iheartradio/db/DBStation;

    invoke-direct {v3, v2}, Lcom/clearchannel/iheartradio/db/DBStation;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1672
    .local v3, "station":Lcom/clearchannel/iheartradio/db/DBStation;
    const/4 v0, 0x0

    .line 1674
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/clearchannel/iheartradio/db/DBStation;->getCursoStationsCity(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1681
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1684
    return-object v0

    .line 1676
    :catch_0
    move-exception v1

    .line 1677
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1680
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 1681
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1682
    throw v4

    .line 1678
    :catch_1
    move-exception v1

    .line 1679
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getCursorStationsFormat(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;
    .locals 6
    .param p1, "formatId"    # J
    .param p3, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .param p4, "isCommercialFree"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1697
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1698
    .local v2, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Lcom/clearchannel/iheartradio/db/DBStation;

    invoke-direct {v3, v2}, Lcom/clearchannel/iheartradio/db/DBStation;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1699
    .local v3, "station":Lcom/clearchannel/iheartradio/db/DBStation;
    const/4 v0, 0x0

    .line 1701
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/clearchannel/iheartradio/db/DBStation;->getCursorStationsFormats(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1708
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1711
    return-object v0

    .line 1703
    :catch_0
    move-exception v1

    .line 1704
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1707
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 1708
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1709
    throw v4

    .line 1705
    :catch_1
    move-exception v1

    .line 1706
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getFavouriteSongsList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1940
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1941
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1944
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorFavouriteSongs()Landroid/database/Cursor;

    move-result-object v0

    .line 1945
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1946
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1948
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    :cond_0
    const/4 v5, 0x4

    :try_start_1
    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1949
    const-string v6, "artist"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    .line 1950
    const-string v6, "song"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x2

    .line 1951
    const-string v6, "imageuri"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 1952
    const-string v6, "mediaid"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 1954
    .local v2, "item":[Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1955
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    .line 1947
    if-nez v5, :cond_0

    move-object v3, v4

    .line 1962
    .end local v2    # "item":[Ljava/lang/String;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1967
    :goto_0
    return-object v3

    .line 1957
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1959
    .local v1, "e1":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1962
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1963
    :catch_1
    move-exception v5

    goto :goto_0

    .line 1960
    .end local v1    # "e1":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    :catchall_0
    move-exception v5

    .line 1962
    :goto_2
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1966
    :goto_3
    throw v5

    .line 1963
    :catch_2
    move-exception v6

    goto :goto_3

    :catch_3
    move-exception v5

    goto :goto_0

    .line 1960
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    goto :goto_2

    .line 1957
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    :catch_4
    move-exception v5

    move-object v1, v5

    move-object v3, v4

    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public getFavouriteStationsList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1891
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1892
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 1895
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorFavouriteStations()Landroid/database/Cursor;

    move-result-object v0

    .line 1896
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1897
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1899
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    :try_start_1
    const-string v5, "stationid"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1900
    .local v2, "item":Ljava/lang/Long;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1901
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    .line 1898
    if-nez v5, :cond_0

    move-object v3, v4

    .line 1908
    .end local v2    # "item":Ljava/lang/Long;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1913
    :goto_0
    return-object v3

    .line 1903
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1905
    .local v1, "e1":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1908
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1909
    :catch_1
    move-exception v5

    goto :goto_0

    .line 1906
    .end local v1    # "e1":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    :catchall_0
    move-exception v5

    .line 1908
    :goto_2
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1912
    :goto_3
    throw v5

    .line 1909
    :catch_2
    move-exception v6

    goto :goto_3

    :catch_3
    move-exception v5

    goto :goto_0

    .line 1906
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_2

    .line 1903
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_4
    move-exception v5

    move-object v1, v5

    move-object v3, v4

    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_1
.end method

.method public getFormatID(Ljava/lang/String;)J
    .locals 8
    .param p1, "formatName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 2031
    const-wide/16 v3, 0x0

    .line 2033
    .local v3, "formatId":J
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 2034
    .local v5, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/clearchannel/iheartradio/db/DBFormat;

    invoke-direct {v2, v5}, Lcom/clearchannel/iheartradio/db/DBFormat;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2035
    .local v2, "format":Lcom/clearchannel/iheartradio/db/DBFormat;
    const/4 v0, 0x0

    .line 2037
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/clearchannel/iheartradio/db/DBFormat;->getCursorFormatID(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2038
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    .line 2044
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2047
    return-wide v3

    .line 2039
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 2040
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v6, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2043
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v6

    .line 2044
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2045
    throw v6

    .line 2041
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 2042
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getFormatName(J)Ljava/lang/String;
    .locals 7
    .param p1, "formatid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 2052
    const-string v3, ""

    .line 2054
    .local v3, "formatName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2055
    .local v4, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/clearchannel/iheartradio/db/DBFormat;

    invoke-direct {v2, v4}, Lcom/clearchannel/iheartradio/db/DBFormat;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2056
    .local v2, "format":Lcom/clearchannel/iheartradio/db/DBFormat;
    const/4 v0, 0x0

    .line 2058
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v2, p1, p2}, Lcom/clearchannel/iheartradio/db/DBFormat;->getCursorFormat(J)Landroid/database/Cursor;

    move-result-object v0

    .line 2059
    const-string v5, "format"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2065
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2068
    return-object v3

    .line 2060
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 2061
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2064
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    .line 2065
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2066
    throw v5

    .line 2062
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 2063
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getHistoryList(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Ljava/util/List;
    .locals 8
    .param p1, "sortingType"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1630
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1631
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1634
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursor20Recent(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;

    move-result-object v0

    .line 1635
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1636
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1638
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    :cond_0
    const/4 v5, 0x5

    :try_start_1
    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1639
    const-string v6, "artist"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    .line 1640
    const-string v6, "song"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x2

    .line 1641
    const-string v6, "stationid"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 1642
    const-string v6, "stationimageuri"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x4

    .line 1643
    const-string v6, "songimageuri"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 1645
    .local v2, "item":[Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1646
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    .line 1637
    if-nez v5, :cond_0

    move-object v3, v4

    .line 1653
    .end local v2    # "item":[Ljava/lang/String;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1658
    :goto_0
    return-object v3

    .line 1648
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1650
    .local v1, "e1":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1653
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1654
    :catch_1
    move-exception v5

    goto :goto_0

    .line 1651
    .end local v1    # "e1":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    :catchall_0
    move-exception v5

    .line 1653
    :goto_2
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1657
    :goto_3
    throw v5

    .line 1654
    :catch_2
    move-exception v6

    goto :goto_3

    :catch_3
    move-exception v5

    goto :goto_0

    .line 1651
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    goto :goto_2

    .line 1648
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    :catch_4
    move-exception v5

    move-object v1, v5

    move-object v3, v4

    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public getPathCacheImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "Imageurl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 802
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    new-instance v0, Lcom/clearchannel/iheartradio/db/DBCache;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v4}, Lcom/clearchannel/iheartradio/db/DBCache;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 808
    .local v0, "dbCache":Lcom/clearchannel/iheartradio/db/DBCache;
    const/4 v2, 0x0

    .line 812
    .local v2, "path":Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    :try_start_2
    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/db/DBCache;->selectCachePathForUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 823
    :goto_0
    :try_start_3
    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 829
    :goto_1
    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 830
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 831
    return-object v2

    .line 803
    .end local v0    # "dbCache":Lcom/clearchannel/iheartradio/db/DBCache;
    .end local v2    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 804
    .local v1, "e":Landroid/database/SQLException;
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 815
    .end local v1    # "e":Landroid/database/SQLException;
    .restart local v0    # "dbCache":Lcom/clearchannel/iheartradio/db/DBCache;
    .restart local v2    # "path":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 817
    .local v1, "e":Landroid/database/sqlite/SQLiteDoneException;
    :try_start_4
    const-string v4, "DataHelper"

    const-string v5, "No matching record found for image."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 824
    .end local v1    # "e":Landroid/database/sqlite/SQLiteDoneException;
    :catch_2
    move-exception v4

    move-object v3, v4

    .line 825
    .local v3, "sqle":Landroid/database/SQLException;
    :try_start_5
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v3}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v3    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 818
    :catch_3
    move-exception v1

    .line 819
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v4, "DataHelper"

    const-string v5, "Exception while trying get path."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 826
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    move-object v1, v4

    .line 827
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public getStateName(J)Ljava/lang/String;
    .locals 7
    .param p1, "stateid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 2073
    const-string v4, ""

    .line 2075
    .local v4, "stateName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2076
    .local v2, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Lcom/clearchannel/iheartradio/db/DBState;

    invoke-direct {v3, v2}, Lcom/clearchannel/iheartradio/db/DBState;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2077
    .local v3, "state":Lcom/clearchannel/iheartradio/db/DBState;
    const/4 v0, 0x0

    .line 2079
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v3, p1, p2}, Lcom/clearchannel/iheartradio/db/DBState;->getCursorState(J)Landroid/database/Cursor;

    move-result-object v0

    .line 2080
    const-string v5, "state"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 2086
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2089
    return-object v4

    .line 2081
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 2082
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2085
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    .line 2086
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2087
    throw v5

    .line 2083
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 2084
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getStationSyncXml(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 2109
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 2110
    new-instance v1, Lcom/clearchannel/iheartradio/db/DBFavourite;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2112
    .local v1, "fav":Lcom/clearchannel/iheartradio/db/DBFavourite;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/clearchannel/iheartradio/db/DBFavourite;->getStationSyncXml(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2118
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 2112
    return-object v2

    .line 2113
    :catch_0
    move-exception v0

    .line 2114
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2117
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 2118
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 2119
    throw v2

    .line 2115
    :catch_1
    move-exception v0

    .line 2116
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

.method public getStationSyncXml(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
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
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 2094
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 2095
    new-instance v1, Lcom/clearchannel/iheartradio/db/DBFavourite;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2097
    .local v1, "fav":Lcom/clearchannel/iheartradio/db/DBFavourite;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/clearchannel/iheartradio/db/DBFavourite;->getStationsToUpdate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2103
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 2097
    return-object v2

    .line 2098
    :catch_0
    move-exception v0

    .line 2099
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2102
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 2103
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 2104
    throw v2

    .line 2100
    :catch_1
    move-exception v0

    .line 2101
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

.method public insertFavouriteSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .param p1, "artist"    # Ljava/lang/String;
    .param p2, "songTitle"    # Ljava/lang/String;
    .param p3, "imageuri"    # Ljava/lang/String;
    .param p4, "mediaId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1274
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 1275
    new-instance v0, Lcom/clearchannel/iheartradio/db/DBFavourite;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/db/DBFavourite;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1276
    .local v0, "fav":Lcom/clearchannel/iheartradio/db/DBFavourite;
    const-wide/16 v7, -0x1

    .line 1277
    .local v7, "id":J
    if-nez p1, :cond_0

    .line 1278
    const-string p1, ""

    .line 1280
    :cond_0
    if-nez p2, :cond_1

    .line 1281
    const-string p2, ""

    .line 1284
    :cond_1
    :try_start_0
    invoke-virtual {v0, p4, p5}, Lcom/clearchannel/iheartradio/db/DBFavourite;->findFavouriteSongIDByMediaId(J)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v7

    .line 1290
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-gez v1, :cond_2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 1291
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/clearchannel/iheartradio/db/DBFavourite;->insertFavouriteSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1306
    :goto_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1308
    return-void

    .line 1292
    :cond_2
    :try_start_2
    invoke-virtual {v0, p4, p5}, Lcom/clearchannel/iheartradio/db/DBFavourite;->isFavouriteSongInactive(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1297
    const/4 v1, 0x1

    invoke-virtual {v0, p4, p5, v1}, Lcom/clearchannel/iheartradio/db/DBFavourite;->updateSongActiveStatus(JZ)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1301
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 1302
    .local v9, "sqle":Landroid/database/SQLException;
    :try_start_3
    new-instance v1, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v9}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1305
    .end local v9    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    .line 1306
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1307
    throw v1

    .line 1299
    :cond_3
    :try_start_4
    const-string v1, "DataHelper"

    const-string v2, "Attempted to favourite a song already active in favourites list"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1303
    :catch_1
    move-exception v1

    move-object v6, v1

    .line 1304
    .local v6, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v1, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1285
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public insertFavouriteStation(J)V
    .locals 7
    .param p1, "stationId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1359
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 1360
    new-instance v1, Lcom/clearchannel/iheartradio/db/DBFavourite;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v5}, Lcom/clearchannel/iheartradio/db/DBFavourite;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1361
    .local v1, "fav":Lcom/clearchannel/iheartradio/db/DBFavourite;
    const-wide/16 v2, -0x1

    .line 1364
    .local v2, "id":J
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/clearchannel/iheartradio/db/DBFavourite;->findFavouriteStationIDByStationId(J)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v2

    .line 1370
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gez v5, :cond_0

    .line 1371
    :try_start_1
    invoke-virtual {v1, p1, p2}, Lcom/clearchannel/iheartradio/db/DBFavourite;->insertFavouriteStation(J)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1388
    :goto_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1390
    return-void

    .line 1372
    :cond_0
    :try_start_2
    invoke-virtual {v1, p1, p2}, Lcom/clearchannel/iheartradio/db/DBFavourite;->isFavouriteStationInactive(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1379
    const/4 v5, 0x1

    invoke-virtual {v1, p1, p2, v5}, Lcom/clearchannel/iheartradio/db/DBFavourite;->updateStationActiveStatus(JZ)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1383
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1384
    .local v4, "sqle":Landroid/database/SQLException;
    :try_start_3
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v4}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1387
    .end local v4    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    .line 1388
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1389
    throw v5

    .line 1381
    :cond_1
    :try_start_4
    const-string v5, "DataHelper"

    const-string v6, "Attempted to favourite a station already active in favourites list"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1385
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 1386
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1365
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method public insertStreamVersion(Ljava/lang/String;)V
    .locals 4
    .param p1, "versionNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1190
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1191
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "insert into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1192
    const-string v2, "version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1193
    const-string v2, " (version, name) VALUES(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1194
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1195
    const-string v2, "\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1196
    const-string v2, "stream_list_version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1197
    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1199
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 1201
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1207
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1209
    return-void

    .line 1202
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1203
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1206
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 1207
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1208
    throw v2

    .line 1204
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1205
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

.method public insertVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "versionNumber"    # Ljava/lang/String;

    .prologue
    .line 2213
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 2215
    const-string v1, "stream_list_version"

    .line 2214
    invoke-virtual {p0, p1, v1}, Lcom/clearchannel/iheartradio/db/DataHelper;->insertVersion(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2221
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 2223
    :goto_0
    return-void

    .line 2216
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2217
    .local v0, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    :try_start_1
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2221
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    goto :goto_0

    .line 2220
    .end local v0    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    :catchall_0
    move-exception v1

    .line 2221
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 2222
    throw v1
.end method

.method public insertVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "versionNumber"    # Ljava/lang/String;
    .param p2, "versionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1160
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1161
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "insert into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1162
    const-string v2, "version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1163
    const-string v2, " (version, name) VALUES(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1164
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1165
    const-string v2, "\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1166
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1167
    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1168
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 1169
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 1171
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1182
    :goto_0
    return-void

    .line 1172
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1173
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1176
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 1177
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1178
    throw v2

    .line 1174
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1175
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1180
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isSongFavourited(J)Z
    .locals 4
    .param p1, "mediaId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1337
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 1338
    new-instance v1, Lcom/clearchannel/iheartradio/db/DBFavourite;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1340
    .local v1, "fav":Lcom/clearchannel/iheartradio/db/DBFavourite;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/clearchannel/iheartradio/db/DBFavourite;->isSongFavourited(J)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1346
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1340
    return v2

    .line 1341
    :catch_0
    move-exception v0

    .line 1342
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1345
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 1346
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1347
    throw v2

    .line 1343
    :catch_1
    move-exception v0

    .line 1344
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

.method public isStationExists(JZ)Z
    .locals 7
    .param p1, "streamId"    # J
    .param p3, "prepare"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1434
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 1435
    new-instance v2, Lcom/clearchannel/iheartradio/db/DBStation;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/DBStation;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1436
    .local v2, "station":Lcom/clearchannel/iheartradio/db/DBStation;
    const/4 v1, 0x0

    .line 1438
    .local v1, "exists":Z
    :try_start_0
    invoke-virtual {v2, p1, p2, p3}, Lcom/clearchannel/iheartradio/db/DBStation;->getIdByStreamId(JZ)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 1446
    :cond_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1449
    :goto_0
    return v1

    .line 1439
    :catch_0
    move-exception v0

    .line 1440
    .local v0, "e":Landroid/database/sqlite/SQLiteDoneException;
    const/4 v1, 0x0

    .line 1446
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    goto :goto_0

    .line 1441
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDoneException;
    :catch_1
    move-exception v0

    .line 1442
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v3, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1445
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    .line 1446
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1447
    throw v3

    .line 1443
    :catch_2
    move-exception v0

    .line 1444
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public isStationFavourited(J)Z
    .locals 4
    .param p1, "stationId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1420
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 1421
    new-instance v1, Lcom/clearchannel/iheartradio/db/DBFavourite;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1423
    .local v1, "fav":Lcom/clearchannel/iheartradio/db/DBFavourite;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/clearchannel/iheartradio/db/DBFavourite;->isStationFavourited(J)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1429
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1423
    return v2

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1428
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 1429
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1430
    throw v2

    .line 1426
    :catch_1
    move-exception v0

    .line 1427
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

.method public openDB()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/clearchannel/iheartradio/db/DataHelper;->DB_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "iheartradio.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 98
    const/4 v2, 0x0

    .line 97
    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 99
    return-void
.end method

.method public openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/clearchannel/iheartradio/db/DataHelper;->DB_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "iheartradio.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 107
    const/4 v2, 0x1

    .line 106
    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public removeAllFavoriteStations()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 2174
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 2175
    new-instance v1, Lcom/clearchannel/iheartradio/db/DBFavourite;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2177
    .local v1, "fav":Lcom/clearchannel/iheartradio/db/DBFavourite;
    :try_start_0
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/DBFavourite;->deleteAllFavoritesStations()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2183
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 2185
    return-void

    .line 2178
    :catch_0
    move-exception v0

    .line 2179
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2182
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 2183
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 2184
    throw v2

    .line 2180
    :catch_1
    move-exception v0

    .line 2181
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

.method public removeAutoplayStation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 775
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    new-instance v0, Lcom/clearchannel/iheartradio/db/DBFavourite;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v3}, Lcom/clearchannel/iheartradio/db/DBFavourite;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 782
    .local v0, "dbFavourite":Lcom/clearchannel/iheartradio/db/DBFavourite;
    :try_start_1
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/DBFavourite;->clearAutoplayStation()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 790
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 792
    return-void

    .line 776
    .end local v0    # "dbFavourite":Lcom/clearchannel/iheartradio/db/DBFavourite;
    :catch_0
    move-exception v1

    .line 777
    .local v1, "e":Landroid/database/SQLException;
    new-instance v3, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 783
    .end local v1    # "e":Landroid/database/SQLException;
    .restart local v0    # "dbFavourite":Lcom/clearchannel/iheartradio/db/DBFavourite;
    :catch_1
    move-exception v2

    .line 784
    .local v2, "sqle":Landroid/database/SQLException;
    :try_start_2
    const-string v3, "DataHelper"

    const-string v4, "Exception while trying unset autoplay station."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    new-instance v3, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 789
    .end local v2    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    .line 790
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 791
    throw v3

    .line 786
    :catch_2
    move-exception v1

    .line 787
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "DataHelper"

    const-string v4, "Exception while trying unset autoplay station."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    new-instance v3, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public repopulateCities(Ljava/util/List;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRCity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "cities":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRCity;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 397
    new-instance v4, Lcom/clearchannel/iheartradio/db/DBCity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/DBCity;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 398
    .local v4, "city":Lcom/clearchannel/iheartradio/db/DBCity;
    new-instance v21, Lcom/clearchannel/iheartradio/db/DBState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/db/DBState;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 399
    .local v21, "state":Lcom/clearchannel/iheartradio/db/DBState;
    new-instance v24, Lcom/clearchannel/iheartradio/db/DBStation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/db/DBStation;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 400
    .local v24, "station":Lcom/clearchannel/iheartradio/db/DBStation;
    const/16 v22, 0x0

    .line 403
    .local v22, "stateAbbrId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {v24 .. v24}, Lcom/clearchannel/iheartradio/db/DBStation;->getStationMinID()I

    move-result v29

    .line 406
    .local v29, "trafficId":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 407
    invoke-virtual/range {v21 .. v21}, Lcom/clearchannel/iheartradio/db/DBState;->selectStateIdMapKeyedToAbbr()Ljava/util/Map;

    move-result-object v22

    .line 408
    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/db/DBCity;->prepareInsertCity()V

    .line 409
    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/db/DBCity;->deleteAllCities()V

    .line 410
    invoke-virtual/range {v24 .. v24}, Lcom/clearchannel/iheartradio/db/DBStation;->deleteAllCityStations()V

    .line 411
    invoke-virtual/range {v24 .. v24}, Lcom/clearchannel/iheartradio/db/DBStation;->prepareGetIdByCallLetters()V

    .line 412
    invoke-virtual/range {v24 .. v24}, Lcom/clearchannel/iheartradio/db/DBStation;->prepareInsertStationCity()V

    .line 414
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 488
    invoke-virtual/range {v24 .. v24}, Lcom/clearchannel/iheartradio/db/DBStation;->endInsertStationCity()V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 499
    return-void

    .line 414
    :cond_1
    :try_start_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/clearchannel/iheartradio/model/IHRCity;

    .line 415
    .local v19, "item":Lcom/clearchannel/iheartradio/model/IHRCity;
    const/16 v23, 0x0

    .line 416
    .local v23, "stateId":Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Lcom/clearchannel/iheartradio/model/IHRCity;->getState()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 417
    if-nez v23, :cond_6

    const/4 v5, -0x1

    .line 418
    .end local v23    # "stateId":Ljava/lang/Object;
    :goto_0
    invoke-virtual/range {v19 .. v19}, Lcom/clearchannel/iheartradio/model/IHRCity;->getName()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    .line 417
    invoke-virtual/range {v4 .. v11}, Lcom/clearchannel/iheartradio/db/DBCity;->insertCity(ILjava/lang/String;DDZ)J

    move-result-wide v8

    .line 419
    .local v8, "cityId":J
    const-wide/16 v6, -0x1

    .line 420
    .local v6, "stationId":J
    invoke-virtual/range {v19 .. v19}, Lcom/clearchannel/iheartradio/model/IHRCity;->getTrafficURL()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual/range {v19 .. v19}, Lcom/clearchannel/iheartradio/model/IHRCity;->getTrafficURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-lez v5, :cond_4

    .line 422
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "TRAFFIC-"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/clearchannel/iheartradio/model/IHRCity;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    move-object/from16 v0, v24

    move-object v1, v5

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/db/DBStation;->getIdByStationURL(Ljava/lang/String;Z)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    .line 464
    :cond_2
    :goto_1
    const-wide/16 v13, 0x0

    cmp-long v5, v6, v13

    if-lez v5, :cond_3

    .line 465
    const/4 v10, 0x0

    move-object/from16 v5, v24

    :try_start_3
    invoke-virtual/range {v5 .. v10}, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationCity(JJZ)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 469
    :cond_3
    :try_start_4
    invoke-virtual/range {v24 .. v24}, Lcom/clearchannel/iheartradio/db/DBStation;->endGetIdByStationURL()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 475
    :cond_4
    :goto_2
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Lcom/clearchannel/iheartradio/model/IHRCity;->copyStationList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v6    # "stationId":J
    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 477
    .local v27, "streamId":Ljava/lang/String;
    :try_start_6
    new-instance v6, Ljava/lang/Long;

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const/4 v6, 0x1

    move-object/from16 v0, v24

    move-wide v1, v13

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/db/DBStation;->getIdByStreamId(JZ)J

    move-result-wide v11

    .line 479
    .local v11, "id":J
    const-wide/16 v13, 0x0

    cmp-long v6, v11, v13

    if-lez v6, :cond_5

    .line 480
    const/4 v15, 0x0

    move-object/from16 v10, v24

    move-wide v13, v8

    invoke-virtual/range {v10 .. v15}, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationCity(JJZ)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 483
    .end local v11    # "id":J
    :catch_0
    move-exception v6

    goto :goto_3

    .line 418
    .end local v8    # "cityId":J
    .end local v27    # "streamId":Ljava/lang/String;
    .restart local v23    # "stateId":Ljava/lang/Object;
    :cond_6
    :try_start_7
    check-cast v23, Ljava/lang/Integer;

    .end local v23    # "stateId":Ljava/lang/Object;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto/16 :goto_0

    .line 423
    .restart local v6    # "stationId":J
    .restart local v8    # "cityId":J
    :catch_1
    move-exception v5

    move-object/from16 v17, v5

    .line 424
    .local v17, "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Lcom/clearchannel/iheartradio/model/IHRCity;->getTrafficURL()Ljava/lang/String;

    move-result-object v5

    const-string v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v28, v5, 0x1

    .line 425
    .local v28, "terminator":I
    invoke-virtual/range {v19 .. v19}, Lcom/clearchannel/iheartradio/model/IHRCity;->getTrafficURL()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v10, v28, 0x7

    move-object v0, v5

    move/from16 v1, v28

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v10, "-"

    const-string v11, ""

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 426
    .local v16, "callLetters":Ljava/lang/String;
    add-int/lit8 v29, v29, -0x1

    .line 428
    const/16 v5, 0x16

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/4 v5, 0x0

    .line 429
    const-string v10, ""

    aput-object v10, v25, v5

    const/4 v5, 0x1

    .line 430
    const-string v10, ""

    aput-object v10, v25, v5

    const/4 v5, 0x2

    .line 431
    aput-object v16, v25, v5

    const/4 v5, 0x3

    .line 432
    const-string v10, "Updates every 15 min. Mon - Fri, 5am - 10pm"

    aput-object v10, v25, v5

    const/4 v5, 0x4

    .line 433
    const-string v10, ""

    aput-object v10, v25, v5

    const/4 v5, 0x5

    .line 434
    const-string v10, ""

    aput-object v10, v25, v5

    const/4 v5, 0x6

    .line 435
    const-string v10, ""

    aput-object v10, v25, v5

    const/4 v5, 0x7

    .line 436
    const-string v10, ""

    aput-object v10, v25, v5

    const/16 v5, 0x8

    .line 437
    const-string v10, ""

    aput-object v10, v25, v5

    const/16 v5, 0x9

    .line 438
    const-string v10, ""

    aput-object v10, v25, v5

    const/16 v5, 0xa

    .line 439
    const-string v10, "http://iheartradio.com/cc-common/iphone/images/_local_traffic.png"

    aput-object v10, v25, v5

    const/16 v5, 0xb

    .line 440
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Lcom/clearchannel/iheartradio/model/IHRCity;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " Traffic"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v25, v5

    const/16 v5, 0xc

    .line 441
    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v25, v5

    const/16 v5, 0xd

    .line 442
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "TRAFFIC-"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/clearchannel/iheartradio/model/IHRCity;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v25, v5

    const/16 v5, 0xe

    .line 443
    invoke-virtual/range {v19 .. v19}, Lcom/clearchannel/iheartradio/model/IHRCity;->getTrafficURL()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v25, v5

    const/16 v5, 0xf

    .line 444
    invoke-virtual/range {v19 .. v19}, Lcom/clearchannel/iheartradio/model/IHRCity;->getTrafficURL()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v25, v5

    const/16 v5, 0x10

    .line 445
    invoke-virtual/range {v19 .. v19}, Lcom/clearchannel/iheartradio/model/IHRCity;->getTrafficURL()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v25, v5

    const/16 v5, 0x11

    .line 446
    invoke-virtual/range {v19 .. v19}, Lcom/clearchannel/iheartradio/model/IHRCity;->getTrafficURL()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v25, v5

    const/16 v5, 0x12

    .line 447
    const-string v10, "0.0"

    aput-object v10, v25, v5

    const/16 v5, 0x13

    .line 448
    const-string v10, ""

    aput-object v10, v25, v5

    const/16 v5, 0x14

    .line 449
    const-string v10, ""

    aput-object v10, v25, v5

    const/16 v5, 0x15

    .line 450
    const-string v10, ""

    aput-object v10, v25, v5
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 453
    .local v25, "stationArray":[Ljava/lang/String;
    :try_start_8
    new-instance v26, Lcom/clearchannel/iheartradio/model/IHRStation;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>([Ljava/lang/String;)V

    .line 454
    .local v26, "stn":Lcom/clearchannel/iheartradio/model/IHRStation;
    const/4 v5, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/db/DBStation;->insertStation(Lcom/clearchannel/iheartradio/model/IHRStation;Z)J

    move-result-wide v6

    .line 456
    invoke-static {}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->shared()Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 457
    invoke-static {}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->shared()Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    move-result-object v5

    iget-object v5, v5, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStationsLookup:Ljava/util/Map;

    if-eqz v5, :cond_2

    .line 458
    invoke-static {}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->shared()Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    move-result-object v5

    iget-object v5, v5, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mStationsLookup:Ljava/util/Map;

    move-object v0, v5

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 460
    .end local v26    # "stn":Lcom/clearchannel/iheartradio/model/IHRStation;
    :catch_2
    move-exception v5

    move-object/from16 v18, v5

    .line 461
    .local v18, "e1":Ljava/lang/Exception;
    :try_start_9
    const-string v5, "DataHelper"

    const-string v10, "Failed to insert traffic station"

    move-object v0, v5

    move-object v1, v10

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 490
    .end local v6    # "stationId":J
    .end local v8    # "cityId":J
    .end local v16    # "callLetters":Ljava/lang/String;
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v18    # "e1":Ljava/lang/Exception;
    .end local v19    # "item":Lcom/clearchannel/iheartradio/model/IHRCity;
    .end local v25    # "stationArray":[Ljava/lang/String;
    .end local v28    # "terminator":I
    :catch_3
    move-exception v5

    move-object/from16 v20, v5

    .line 491
    .local v20, "sqle":Landroid/database/SQLException;
    :try_start_a
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual/range {v20 .. v20}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 495
    .end local v20    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 498
    throw v5

    .line 470
    .restart local v6    # "stationId":J
    .restart local v8    # "cityId":J
    .restart local v19    # "item":Lcom/clearchannel/iheartradio/model/IHRCity;
    :catch_4
    move-exception v17

    .line 472
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    .line 492
    .end local v6    # "stationId":J
    .end local v8    # "cityId":J
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v19    # "item":Lcom/clearchannel/iheartradio/model/IHRCity;
    :catch_5
    move-exception v5

    move-object/from16 v17, v5

    .line 493
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_c
    const-string v5, "DataHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method public repopulateFeaturedContent(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1086
    .local p1, "contentList":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;>;"
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 1087
    .local v6, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Lcom/clearchannel/iheartradio/db/DBStation;

    invoke-direct {v1, v6}, Lcom/clearchannel/iheartradio/db/DBStation;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1088
    .local v1, "dbStation":Lcom/clearchannel/iheartradio/db/DBStation;
    new-instance v2, Lcom/clearchannel/iheartradio/db/DBVideo;

    invoke-direct {v2, v6}, Lcom/clearchannel/iheartradio/db/DBVideo;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1089
    .local v2, "dbVideo":Lcom/clearchannel/iheartradio/db/DBVideo;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    .local v5, "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_2

    .line 1136
    invoke-virtual {p0, v6}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1139
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 1141
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_8

    .line 1150
    :cond_1
    return-object p1

    .line 1091
    :cond_2
    :try_start_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

    .line 1092
    .local v0, "contentItem":Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->isStream()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1095
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getCallLetters()Ljava/lang/String;

    move-result-object v10

    .line 1094
    invoke-virtual {v1, v10}, Lcom/clearchannel/iheartradio/db/DBStation;->selectStationByCallLetters(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v8

    .line 1096
    .local v8, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-eqz v8, :cond_3

    .line 1097
    invoke-virtual {v8}, Lcom/clearchannel/iheartradio/model/IHRStation;->getLogoURL()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->setThumbnailUrl(Ljava/lang/String;)V

    .line 1099
    const/16 v10, 0xe

    invoke-virtual {v8, v10}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1098
    invoke-virtual {v0, v10}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->setContentUrl(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {v8}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->setCallLetters(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1131
    .end local v0    # "contentItem":Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;
    .end local v8    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :catch_0
    move-exception v10

    move-object v7, v10

    .line 1132
    .local v7, "sqle":Landroid/database/SQLException;
    :try_start_2
    new-instance v10, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v7}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1135
    .end local v7    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v10

    .line 1136
    invoke-virtual {p0, v6}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1137
    throw v10

    .line 1105
    .restart local v0    # "contentItem":Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;
    .restart local v8    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_3
    :try_start_3
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1133
    .end local v0    # "contentItem":Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;
    .end local v8    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :catch_1
    move-exception v10

    move-object v3, v10

    .line 1134
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v10, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1107
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "contentItem":Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;
    :cond_4
    :try_start_5
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->isVideo()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1109
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getId()J

    move-result-wide v12

    .line 1108
    invoke-virtual {v2, v12, v13}, Lcom/clearchannel/iheartradio/db/DBVideo;->selectVideoByMediaId(J)Lcom/clearchannel/iheartradio/model/IHRVideo;

    move-result-object v9

    .line 1110
    .local v9, "video":Lcom/clearchannel/iheartradio/model/IHRVideo;
    if-eqz v9, :cond_6

    .line 1111
    invoke-virtual {v9}, Lcom/clearchannel/iheartradio/model/IHRVideo;->getThumbnail85()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->setThumbnailUrl(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v9}, Lcom/clearchannel/iheartradio/model/IHRVideo;->getVideoURL()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->setContentUrl(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getContentUrl()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 1117
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getContentUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    .line 1118
    :cond_5
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1124
    :cond_6
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1128
    .end local v9    # "video":Lcom/clearchannel/iheartradio/model/IHRVideo;
    :cond_7
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1141
    .end local v0    # "contentItem":Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

    .line 1143
    .local v4, "removeItem":Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;
    :try_start_6
    invoke-interface {p1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 1144
    :catch_2
    move-exception v3

    .line 1145
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v11, "DataHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Error occured while attempting to remove an item from the featured content list. Error: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1145
    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public repopulateFormats(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRFormat;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 908
    .local p1, "formats":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRFormat;>;"
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 909
    new-instance v6, Lcom/clearchannel/iheartradio/db/DBFormat;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v6, v5}, Lcom/clearchannel/iheartradio/db/DBFormat;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 910
    .local v6, "dbFormat":Lcom/clearchannel/iheartradio/db/DBFormat;
    new-instance v0, Lcom/clearchannel/iheartradio/db/DBStation;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v5}, Lcom/clearchannel/iheartradio/db/DBStation;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 912
    .local v0, "dbStation":Lcom/clearchannel/iheartradio/db/DBStation;
    :try_start_0
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 913
    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/db/DBFormat;->prepareInsertFormat()V

    .line 914
    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/db/DBFormat;->deleteAllFormats()V

    .line 915
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/DBStation;->deleteAllFormatStations()V

    .line 916
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/DBStation;->prepareGetIdByCallLetters()V

    .line 917
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/DBStation;->prepareInsertStationFormat()V

    .line 918
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local p1    # "formats":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRFormat;>;"
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 934
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/DBStation;->endInsertStationFormat()V

    .line 935
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 942
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 944
    return-void

    .line 918
    :cond_1
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/clearchannel/iheartradio/model/IHRFormat;

    .line 919
    .local v8, "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Lcom/clearchannel/iheartradio/model/IHRFormat;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v6, p1, v5}, Lcom/clearchannel/iheartradio/db/DBFormat;->insertFormat(Ljava/lang/String;Z)J

    move-result-wide v3

    .line 921
    .local v3, "formatId":J
    invoke-virtual {v8}, Lcom/clearchannel/iheartradio/model/IHRFormat;->copyStationList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v8    # "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 922
    .local v10, "streamId":Ljava/lang/String;
    const-string v5, "!"

    invoke-virtual {v10, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    .line 925
    :try_start_2
    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v10}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const/4 v5, 0x1

    invoke-virtual {v0, v11, v12, v5}, Lcom/clearchannel/iheartradio/db/DBStation;->getIdByStreamId(JZ)J

    move-result-wide v1

    .line 927
    .local v1, "id":J
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/clearchannel/iheartradio/db/DBStation;->insertStationFormat(JJZ)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 928
    .end local v1    # "id":J
    :catch_0
    move-exception v5

    goto :goto_0

    .line 936
    .end local v3    # "formatId":J
    .end local v10    # "streamId":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v9, v5

    .line 937
    .local v9, "sqle":Landroid/database/SQLException;
    :try_start_3
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v9}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .end local v6    # "dbFormat":Lcom/clearchannel/iheartradio/db/DBFormat;
    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 940
    .end local v9    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    .line 941
    iget-object v6, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 942
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 943
    throw v5

    .line 938
    .restart local v6    # "dbFormat":Lcom/clearchannel/iheartradio/db/DBFormat;
    :catch_2
    move-exception v5

    move-object v7, v5

    .line 939
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .end local v6    # "dbFormat":Lcom/clearchannel/iheartradio/db/DBFormat;
    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public repopulateStations(Ljava/util/List;)V
    .locals 9
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
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "stations":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRStation;>;"
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 268
    new-instance v3, Lcom/clearchannel/iheartradio/db/DBStation;

    iget-object v6, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v3, v6}, Lcom/clearchannel/iheartradio/db/DBStation;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 270
    .local v3, "station":Lcom/clearchannel/iheartradio/db/DBStation;
    :try_start_0
    iget-object v6, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 271
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/db/DBStation;->prepareInsertStation()V

    .line 272
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/db/DBStation;->deleteAllStations()V

    .line 273
    const/4 v5, 0x0

    .line 274
    .local v5, "totalReaded":I
    const/4 v4, 0x0

    .line 275
    .local v4, "totalAdded":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 285
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/db/DBStation;->endInsertStation()V

    .line 286
    const-string v6, "Data"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " stations readed, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " stations added."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v6, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    iget-object v6, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 294
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 296
    return-void

    .line 275
    :cond_1
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clearchannel/iheartradio/model/IHRStation;

    .line 276
    .local v1, "item":Lcom/clearchannel/iheartradio/model/IHRStation;
    add-int/lit8 v5, v5, 0x1

    .line 277
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, "!"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 281
    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Lcom/clearchannel/iheartradio/db/DBStation;->insertStation(Lcom/clearchannel/iheartradio/model/IHRStation;Z)J
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "item":Lcom/clearchannel/iheartradio/model/IHRStation;
    .end local v4    # "totalAdded":I
    .end local v5    # "totalReaded":I
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 289
    .local v2, "sqle":Landroid/database/SQLException;
    :try_start_2
    new-instance v6, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    .end local v2    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v6

    .line 293
    iget-object v7, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 294
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 295
    throw v6

    .line 290
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v6, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public repopulateVideos(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRVideo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1004
    .local p1, "videos":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRVideo;>;"
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 1005
    new-instance v0, Lcom/clearchannel/iheartradio/db/DBVideo;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v4}, Lcom/clearchannel/iheartradio/db/DBVideo;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1007
    .local v0, "dbVideo":Lcom/clearchannel/iheartradio/db/DBVideo;
    :try_start_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1008
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/DBVideo;->prepareInsertVideo()V

    .line 1009
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/DBVideo;->deleteAllVideos()V

    .line 1010
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1013
    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1020
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1022
    return-void

    .line 1010
    :cond_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/clearchannel/iheartradio/model/IHRVideo;

    .line 1011
    .local v3, "video":Lcom/clearchannel/iheartradio/model/IHRVideo;
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/clearchannel/iheartradio/db/DBVideo;->insertVideo(Lcom/clearchannel/iheartradio/model/IHRVideo;Z)J
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1014
    .end local v3    # "video":Lcom/clearchannel/iheartradio/model/IHRVideo;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 1015
    .local v2, "sqle":Landroid/database/SQLException;
    :try_start_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1018
    .end local v2    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 1019
    iget-object v5, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1020
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1021
    throw v4

    .line 1016
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 1017
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public selectAllCacheUri()Ljava/util/List;
    .locals 7
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
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 841
    const/4 v0, 0x0

    .line 842
    .local v0, "cache":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 844
    .local v3, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Lcom/clearchannel/iheartradio/db/DBCache;

    invoke-direct {v1, v3}, Lcom/clearchannel/iheartradio/db/DBCache;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 846
    .local v1, "dbcache":Lcom/clearchannel/iheartradio/db/DBCache;
    :try_start_0
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/DBCache;->selectAllCacheUri()Ljava/util/List;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 852
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 854
    return-object v0

    .line 847
    :catch_0
    move-exception v4

    .line 848
    .local v4, "sqle":Landroid/database/SQLException;
    :try_start_1
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v4}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 851
    .end local v4    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    .line 852
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 853
    throw v5

    .line 849
    :catch_1
    move-exception v2

    .line 850
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public selectAllCities()Ljava/util/List;
    .locals 7
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
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, "cities":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRCity;>;"
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 566
    .local v3, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Lcom/clearchannel/iheartradio/db/DBCity;

    invoke-direct {v1, v3}, Lcom/clearchannel/iheartradio/db/DBCity;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 568
    .local v1, "city":Lcom/clearchannel/iheartradio/db/DBCity;
    :try_start_0
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/DBCity;->getCityStationList()Ljava/util/List;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 574
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 577
    return-object v0

    .line 569
    :catch_0
    move-exception v4

    .line 570
    .local v4, "sqle":Landroid/database/SQLException;
    :try_start_1
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v4}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    .end local v4    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    .line 574
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 575
    throw v5

    .line 571
    :catch_1
    move-exception v2

    .line 572
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public selectAllFavouritesStations()Ljava/util/List;
    .locals 4
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
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 2159
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 2160
    new-instance v1, Lcom/clearchannel/iheartradio/db/DBFavourite;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2162
    .local v1, "fav":Lcom/clearchannel/iheartradio/db/DBFavourite;
    :try_start_0
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/DBFavourite;->selectAllFavouritesStations()Ljava/util/List;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2168
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 2162
    return-object v2

    .line 2163
    :catch_0
    move-exception v0

    .line 2164
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2167
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 2168
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 2169
    throw v2

    .line 2165
    :catch_1
    move-exception v0

    .line 2166
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

.method public selectAllFormats()Ljava/util/List;
    .locals 7
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
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 883
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 884
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRFormat;>;"
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 886
    .local v3, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Lcom/clearchannel/iheartradio/db/DBFormat;

    invoke-direct {v0, v3}, Lcom/clearchannel/iheartradio/db/DBFormat;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 888
    .local v0, "dbFormat":Lcom/clearchannel/iheartradio/db/DBFormat;
    :try_start_0
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/DBFormat;->selectAllFormats()Ljava/util/List;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 894
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 897
    return-object v2

    .line 889
    :catch_0
    move-exception v4

    .line 890
    .local v4, "sqle":Landroid/database/SQLException;
    :try_start_1
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v4}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    .end local v4    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    .line 894
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 895
    throw v5

    .line 891
    :catch_1
    move-exception v1

    .line 892
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public selectAllStates()Ljava/util/List;
    .locals 7
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
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1051
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 1053
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    :try_start_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "select _id, state, stateabbr"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1056
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1058
    :cond_0
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 1059
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1058
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 1057
    if-nez v4, :cond_0

    .line 1062
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1063
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    :cond_2
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1072
    return-object v2

    .line 1065
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1066
    .local v3, "sqle":Landroid/database/SQLException;
    :try_start_1
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v3}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1069
    .end local v3    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 1070
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1071
    throw v4

    .line 1067
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 1068
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public selectAllStations()Ljava/util/List;
    .locals 7
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
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 378
    const/4 v4, 0x0

    .line 379
    .local v4, "stations":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRStation;>;"
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 381
    .local v1, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Lcom/clearchannel/iheartradio/db/DBStation;

    invoke-direct {v3, v1}, Lcom/clearchannel/iheartradio/db/DBStation;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 383
    .local v3, "station":Lcom/clearchannel/iheartradio/db/DBStation;
    :try_start_0
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/db/DBStation;->selectAllStations()Ljava/util/List;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 389
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 391
    return-object v4

    .line 384
    :catch_0
    move-exception v2

    .line 385
    .local v2, "sqle":Landroid/database/SQLException;
    :try_start_1
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    .end local v2    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    .line 389
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 390
    throw v5

    .line 386
    :catch_1
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public selectAllVideos()Ljava/util/List;
    .locals 7
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
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1029
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRVideo;>;"
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1032
    .local v3, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Lcom/clearchannel/iheartradio/db/DBVideo;

    invoke-direct {v0, v3}, Lcom/clearchannel/iheartradio/db/DBVideo;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1034
    .local v0, "dbVideo":Lcom/clearchannel/iheartradio/db/DBVideo;
    :try_start_0
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/DBVideo;->selectAllVideos()Ljava/util/List;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1040
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1043
    return-object v2

    .line 1035
    :catch_0
    move-exception v4

    .line 1036
    .local v4, "sqle":Landroid/database/SQLException;
    :try_start_1
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v4}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1039
    .end local v4    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    .line 1040
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1041
    throw v5

    .line 1037
    :catch_1
    move-exception v1

    .line 1038
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public selectStationByCallLetters(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRStation;
    .locals 6
    .param p1, "callLetters"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 588
    const/4 v3, 0x0

    .line 589
    .local v3, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 590
    new-instance v0, Lcom/clearchannel/iheartradio/db/DBStation;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v4}, Lcom/clearchannel/iheartradio/db/DBStation;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 592
    .local v0, "dbStation":Lcom/clearchannel/iheartradio/db/DBStation;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/db/DBStation;->selectStationByCallLetters(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRStation;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 598
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 601
    return-object v3

    .line 593
    :catch_0
    move-exception v2

    .line 594
    .local v2, "sqle":Landroid/database/SQLException;
    :try_start_1
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    .end local v2    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 598
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 599
    throw v4

    .line 595
    :catch_1
    move-exception v1

    .line 596
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public selectStationByStationId(J)Lcom/clearchannel/iheartradio/model/IHRStation;
    .locals 7
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 635
    .local v2, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Lcom/clearchannel/iheartradio/db/DBStation;

    invoke-direct {v0, v2}, Lcom/clearchannel/iheartradio/db/DBStation;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 636
    .local v0, "dbStation":Lcom/clearchannel/iheartradio/db/DBStation;
    const/4 v4, 0x0

    .line 638
    .local v4, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/clearchannel/iheartradio/db/DBStation;->selectStationByStationId(J)Lcom/clearchannel/iheartradio/model/IHRStation;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 644
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 647
    return-object v4

    .line 639
    :catch_0
    move-exception v3

    .line 640
    .local v3, "sqle":Landroid/database/SQLException;
    :try_start_1
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v3}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    .end local v3    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    .line 644
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 645
    throw v5

    .line 641
    :catch_1
    move-exception v1

    .line 642
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public selectStationsByCityId(J)Ljava/util/List;
    .locals 6
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
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 612
    new-instance v0, Lcom/clearchannel/iheartradio/db/DBStation;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v4}, Lcom/clearchannel/iheartradio/db/DBStation;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 613
    .local v0, "dbStation":Lcom/clearchannel/iheartradio/db/DBStation;
    const/4 v3, 0x0

    .line 615
    .local v3, "stations":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRStation;>;"
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/clearchannel/iheartradio/db/DBStation;->selectStationsByCityId(J)Ljava/util/List;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 621
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 623
    return-object v3

    .line 616
    :catch_0
    move-exception v2

    .line 617
    .local v2, "sqle":Landroid/database/SQLException;
    :try_start_1
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    .end local v2    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 621
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 622
    throw v4

    .line 618
    :catch_1
    move-exception v1

    .line 619
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public selectStationsBySearch(Ljava/lang/String;)Ljava/util/List;
    .locals 6
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
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 357
    const/4 v3, 0x0

    .line 358
    .local v3, "station":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRStation;>;"
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 359
    new-instance v0, Lcom/clearchannel/iheartradio/db/DBStation;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v4}, Lcom/clearchannel/iheartradio/db/DBStation;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 361
    .local v0, "dbStation":Lcom/clearchannel/iheartradio/db/DBStation;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/db/DBStation;->selectStationsBySearch(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 367
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 370
    return-object v3

    .line 362
    :catch_0
    move-exception v2

    .line 363
    .local v2, "sqle":Landroid/database/SQLException;
    :try_start_1
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    .end local v2    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 367
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 368
    throw v4

    .line 364
    :catch_1
    move-exception v1

    .line 365
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public selectVersions()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 862
    const/4 v4, 0x0

    .line 863
    .local v4, "versions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDBReadOnly()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 864
    .local v1, "rodb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Lcom/clearchannel/iheartradio/db/DBVersion;

    invoke-direct {v3, v1}, Lcom/clearchannel/iheartradio/db/DBVersion;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 866
    .local v3, "version":Lcom/clearchannel/iheartradio/db/DBVersion;
    :try_start_0
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/db/DBVersion;->selectVersions()Ljava/util/Map;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 872
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 875
    return-object v4

    .line 867
    :catch_0
    move-exception v2

    .line 868
    .local v2, "sqle":Landroid/database/SQLException;
    :try_start_1
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 871
    .end local v2    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    .line 872
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 873
    throw v5

    .line 869
    :catch_1
    move-exception v0

    .line 870
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setAutoplayStation(J)V
    .locals 4
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 716
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    new-instance v0, Lcom/clearchannel/iheartradio/db/DBFavourite;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 723
    .local v0, "dbFavourite":Lcom/clearchannel/iheartradio/db/DBFavourite;
    :try_start_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 724
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/DBFavourite;->clearAutoplayStation()V

    .line 725
    invoke-virtual {v0, p1, p2}, Lcom/clearchannel/iheartradio/db/DBFavourite;->setAutoplayStation(J)V

    .line 726
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 735
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 736
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 738
    return-void

    .line 717
    .end local v0    # "dbFavourite":Lcom/clearchannel/iheartradio/db/DBFavourite;
    :catch_0
    move-exception v1

    .line 718
    .local v1, "e":Landroid/database/SQLException;
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 727
    .end local v1    # "e":Landroid/database/SQLException;
    .restart local v0    # "dbFavourite":Lcom/clearchannel/iheartradio/db/DBFavourite;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 729
    .local v1, "e":Landroid/database/sqlite/SQLiteDoneException;
    :try_start_2
    const-string v2, "DataHelper"

    const-string v3, "No matching record found for autoplay station."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDoneException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 734
    .end local v1    # "e":Landroid/database/sqlite/SQLiteDoneException;
    :catchall_0
    move-exception v2

    .line 735
    iget-object v3, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 736
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 737
    throw v2

    .line 731
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 732
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "DataHelper"

    const-string v3, "Exception while trying to set autoplay station."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public syncStations(Ljava/lang/String;)V
    .locals 4
    .param p1, "xmlResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 2125
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 2126
    new-instance v1, Lcom/clearchannel/iheartradio/db/DBFavourite;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2128
    .local v1, "fav":Lcom/clearchannel/iheartradio/db/DBFavourite;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/clearchannel/iheartradio/db/DBFavourite;->syncStations(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2134
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 2136
    return-void

    .line 2129
    :catch_0
    move-exception v0

    .line 2130
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2133
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 2134
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 2135
    throw v2

    .line 2131
    :catch_1
    move-exception v0

    .line 2132
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

.method public syncStations(Ljava/util/List;)V
    .locals 4
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
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 2140
    .local p1, "stations":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRStation;>;"
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 2141
    new-instance v1, Lcom/clearchannel/iheartradio/db/DBFavourite;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/DBFavourite;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2144
    .local v1, "fav":Lcom/clearchannel/iheartradio/db/DBFavourite;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/clearchannel/iheartradio/db/DBFavourite;->syncStations(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2151
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 2153
    return-void

    .line 2145
    :catch_0
    move-exception v0

    .line 2147
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2150
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 2151
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 2152
    throw v2

    .line 2148
    :catch_1
    move-exception v0

    .line 2149
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

.method public updateStreamVersion(Ljava/lang/String;)V
    .locals 4
    .param p1, "versionNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1247
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1248
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "update version set version = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1249
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1250
    const-string v2, "\' where name = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1251
    const-string v2, "stream_list_version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1252
    const-string v2, "\';"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1253
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 1255
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1261
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1263
    return-void

    .line 1256
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1257
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1260
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 1261
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1262
    throw v2

    .line 1258
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1259
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

.method public updateStreams(Ljava/util/List;Ljava/lang/String;)Z
    .locals 13
    .param p2, "versionNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRStation;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 2232
    .local p1, "stations":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRStation;>;"
    const/4 v8, 0x0

    .line 2235
    .local v8, "updateCitiesAndFormats":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 2236
    new-instance v3, Lcom/clearchannel/iheartradio/db/DBStation;

    iget-object v9, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v3, v9}, Lcom/clearchannel/iheartradio/db/DBStation;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2239
    .local v3, "station":Lcom/clearchannel/iheartradio/db/DBStation;
    iget-object v9, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2240
    const/4 v6, 0x0

    .line 2241
    .local v6, "totalRead":I
    const/4 v7, 0x0

    .line 2242
    .local v7, "totalUpdated":I
    const/4 v4, 0x0

    .line 2243
    .local v4, "totalAdded":I
    const/4 v5, 0x0

    .line 2245
    .local v5, "totalDeleted":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 2278
    const-string v9, "stream_list_version"

    invoke-virtual {p0, p2, v9}, Lcom/clearchannel/iheartradio/db/DataHelper;->updateVersion(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    iget-object v9, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2282
    const-string v9, "Data"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " stations read, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " stations added, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " stations updated, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " stations deleted"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2287
    iget-object v9, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2288
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 2291
    .end local v3    # "station":Lcom/clearchannel/iheartradio/db/DBStation;
    .end local v4    # "totalAdded":I
    .end local v5    # "totalDeleted":I
    .end local v6    # "totalRead":I
    .end local v7    # "totalUpdated":I
    :goto_1
    return v8

    .line 2245
    .restart local v3    # "station":Lcom/clearchannel/iheartradio/db/DBStation;
    .restart local v4    # "totalAdded":I
    .restart local v5    # "totalDeleted":I
    .restart local v6    # "totalRead":I
    .restart local v7    # "totalUpdated":I
    :cond_1
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clearchannel/iheartradio/model/IHRStation;

    .line 2247
    .local v2, "item":Lcom/clearchannel/iheartradio/model/IHRStation;
    add-int/lit8 v6, v6, 0x1

    .line 2248
    iget-object v9, v2, Lcom/clearchannel/iheartradio/model/IHRStation;->streamAction:Ljava/lang/String;

    const-string v11, "Add"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2250
    new-instance v11, Ljava/lang/Long;

    const/16 v9, 0xc

    invoke-virtual {v2, v9}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v11, v9}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Lcom/clearchannel/iheartradio/db/DBStation;->selectStationByStationId(J)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v1

    .line 2251
    .local v1, "ihrStation":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-nez v1, :cond_2

    .line 2253
    const/4 v9, 0x1

    invoke-virtual {v3, v2, v9}, Lcom/clearchannel/iheartradio/db/DBStation;->insertStation(Lcom/clearchannel/iheartradio/model/IHRStation;Z)J

    .line 2254
    const/4 v8, 0x1

    .line 2255
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2259
    :cond_2
    const/4 v9, 0x1

    invoke-virtual {v3, v2, v9}, Lcom/clearchannel/iheartradio/db/DBStation;->updateStation(Lcom/clearchannel/iheartradio/model/IHRStation;Z)V

    .line 2260
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 2263
    .end local v1    # "ihrStation":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_3
    iget-object v9, v2, Lcom/clearchannel/iheartradio/model/IHRStation;->streamAction:Ljava/lang/String;

    const-string v11, "Delete"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_0

    .line 2266
    :try_start_2
    new-instance v11, Ljava/lang/Long;

    const/16 v9, 0xc

    invoke-virtual {v2, v9}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v11, v9}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Lcom/clearchannel/iheartradio/db/DBStation;->deleteStation(Ljava/lang/Long;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2271
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 2272
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 2273
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v11, "DataHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v9, "Exception while deleting station "

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0xc

    invoke-virtual {v2, v9}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 2284
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "item":Lcom/clearchannel/iheartradio/model/IHRStation;
    .end local v3    # "station":Lcom/clearchannel/iheartradio/db/DBStation;
    .end local v4    # "totalAdded":I
    .end local v5    # "totalDeleted":I
    .end local v6    # "totalRead":I
    .end local v7    # "totalUpdated":I
    :catch_1
    move-exception v9

    move-object v0, v9

    .line 2285
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v9, "DataHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Exception while updating stream list: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2287
    iget-object v9, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2288
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    goto/16 :goto_1

    .line 2286
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 2287
    iget-object v10, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2288
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 2289
    throw v9
.end method

.method public updateVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "versionNumber"    # Ljava/lang/String;
    .param p2, "versionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    .line 1218
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1219
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "update version set version = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1220
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1221
    const-string v2, "\' where name = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1222
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1223
    const-string v2, "\';"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1224
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 1225
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->openDB()V

    .line 1227
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1233
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1238
    :goto_0
    return-void

    .line 1228
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1229
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1232
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 1233
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/db/DataHelper;->closeDB()V

    .line 1234
    throw v2

    .line 1230
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1231
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1236
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/db/DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method
