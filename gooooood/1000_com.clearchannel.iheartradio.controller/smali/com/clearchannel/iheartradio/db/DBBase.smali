.class public Lcom/clearchannel/iheartradio/db/DBBase;
.super Ljava/lang/Object;
.source "DBBase.java"


# static fields
.field protected static final CACHE_TABLE:Ljava/lang/String; = "cache"

.field protected static final CITY_TABLE:Ljava/lang/String; = "city"

.field protected static final FAVOURITE_SONG_TABLE:Ljava/lang/String; = "favoritesong"

.field protected static final FAVOURITE_STATION_TABLE:Ljava/lang/String; = "favoritestation"

.field protected static final FORMAT_TABLE:Ljava/lang/String; = "format"

.field protected static final HISTORY_TABLE:Ljava/lang/String; = "history"

.field protected static final STATE_TABLE:Ljava/lang/String; = "state"

.field protected static final STATION_CITY_TABLE:Ljava/lang/String; = "stationcity"

.field protected static final STATION_FORMAT_TABLE:Ljava/lang/String; = "stationformat"

.field protected static final STATION_TABLE:Ljava/lang/String; = "station"

.field protected static final VERSION_TABLE:Ljava/lang/String; = "version"

.field protected static final VIDEO_TABLE:Ljava/lang/String; = "video"


# instance fields
.field protected db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/clearchannel/iheartradio/db/DBBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    return-void
.end method
