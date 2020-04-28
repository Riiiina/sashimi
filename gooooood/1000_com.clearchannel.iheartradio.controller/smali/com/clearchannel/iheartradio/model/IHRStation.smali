.class public Lcom/clearchannel/iheartradio/model/IHRStation;
.super Ljava/util/ArrayList;
.source "IHRStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/model/IHRStation$NameComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADD_STREAM:Ljava/lang/String; = "Add"

.field public static final DELETE_STREAM:Ljava/lang/String; = "Delete"

.field public static final kAdsDartParams:I = 0x0

.field public static final kAdsDisabled:I = 0x1

.field public static final kBand:I = 0x15

.field public static final kCallLetters:I = 0x2

.field public static final kCapacity:I = 0x15

.field public static final kDescription:I = 0x3

.field public static final kDisableSongTagging:I = 0x4

.field public static final kFileArtist:I = 0x5

.field public static final kFileLyricsID:I = 0x6

.field public static final kFileTitle:I = 0x7

.field public static final kFileURL:I = 0x8

.field public static final kIsTalk:I = 0x9

.field public static final kLogoURL:I = 0xa

.field public static final kMap:[Ljava/lang/String;

.field public static final kName:I = 0xb

.field public static final kStationID:I = 0xc

.field public static final kStationURL:I = 0xd

.field public static final kStreamURL:I = 0xe

.field public static final kStreamURLAuthenticated:I = 0xf

.field public static final kStreamURLFallback:I = 0x10

.field public static final kStreamURLFallbackAuthenticated:I = 0x11

.field public static final kTrafficDetail:Ljava/lang/String; = "Updates every 15 minutes Mon-Fri 5AM-10PM"

.field public static final kTrafficPrefix:Ljava/lang/String; = ""

.field public static final kTrafficSuffix:Ljava/lang/String; = " Traffic"

.field public static final kTunerAddress:I = 0x12

.field public static final kVideoURL:I = 0x13

.field public static final kVideoURLLowBandwidth:I = 0x14

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public streamAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 31
    const-string v2, "ads_dart_params"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 32
    const-string v2, "ads_disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 33
    const-string v2, "call_letters"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 34
    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 35
    const-string v2, "disable_song_tagging"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 36
    const-string v2, "file_artist"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 37
    const-string v2, "file_lyrics_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 38
    const-string v2, "file_title"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 39
    const-string v2, "file_url"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 40
    const-string v2, "is_talk"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 41
    const-string v2, "logo_url"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 42
    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 43
    const-string v2, "station_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 44
    const-string v2, "station_url"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 45
    const-string v2, "stream_url_rtsp"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 46
    const-string v2, "stream_url_authenticated"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 47
    const-string v2, "stream_url_fallback"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 48
    const-string v2, "stream_url_fallback_authenticated"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 49
    const-string v2, "tuner_address"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 50
    const-string v2, "video_url"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 51
    const-string v2, "video_url_low_bandwidth"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 52
    const-string v2, "band"

    aput-object v2, v0, v1

    .line 30
    sput-object v0, Lcom/clearchannel/iheartradio/model/IHRStation;->kMap:[Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "inStation":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "inKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "inValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/model/IHRStation;->applyKeysWithValues(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "inStation"    # [Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public static canFavoriteByLetters(Ljava/lang/String;)Z
    .locals 3
    .param p0, "inLetters"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 171
    if-nez p0, :cond_0

    move v0, v2

    .line 175
    :goto_0
    return v0

    .line 172
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/clearchannel/iheartradio/model/IHRStation;->isTraffic(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 175
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "inFlattened"    # Ljava/lang/String;

    .prologue
    .line 349
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/clearchannel/iheartradio/model/IHRStation;>;"
    new-instance v4, Lcom/clearchannel/iheartradio/model/IHRStation;

    invoke-direct {v4}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>()V

    .line 352
    .local v4, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    const/4 v3, 0x0

    .line 355
    .local v3, "start":I
    const/4 v0, 0x0

    .line 358
    .local v0, "count":I
    :cond_0
    const/16 v6, 0xa

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 359
    .local v1, "found":I
    if-gez v1, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 361
    .local v5, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/model/IHRStation;->add(Ljava/lang/Object;)Z

    .line 362
    add-int/lit8 v3, v1, 0x1

    .line 363
    add-int/lit8 v0, v0, 0x1

    .line 365
    const/16 v6, 0x15

    if-ne v6, v0, :cond_1

    .line 366
    const/4 v0, 0x0

    .line 367
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v4, Lcom/clearchannel/iheartradio/model/IHRStation;

    .end local v4    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    invoke-direct {v4}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>()V

    .line 370
    .restart local v4    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_1
    if-gtz v3, :cond_0

    .line 372
    return-object v2

    .line 359
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    goto :goto_0
.end method

.method public static fromStringUsingMoreMemory(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "inFlattened"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x15

    .line 329
    const/4 v4, 0x0

    .line 330
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/clearchannel/iheartradio/model/IHRStation;>;"
    const-string v6, "\n"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "expand":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 332
    .local v3, "pieces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v0, v1

    .line 335
    .local v0, "count":I
    if-lt v0, v7, :cond_0

    .line 336
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/clearchannel/iheartradio/model/IHRStation;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/clearchannel/iheartradio/model/IHRStation;>;"
    div-int/lit8 v6, v0, 0x15

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 339
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    sub-int v6, v0, v7

    if-le v2, v6, :cond_1

    .line 345
    .end local v2    # "index":I
    :cond_0
    return-object v4

    .line 340
    .restart local v2    # "index":I
    :cond_1
    new-instance v5, Lcom/clearchannel/iheartradio/model/IHRStation;

    add-int/lit8 v6, v2, 0x15

    invoke-interface {v3, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>(Ljava/util/Collection;)V

    .line 341
    .local v5, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v2, v2, 0x15

    goto :goto_0
.end method

.method public static isPremium(Ljava/lang/String;)Z
    .locals 2
    .param p0, "inLetters"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "! PRN "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTraffic(Ljava/lang/String;)Z
    .locals 2
    .param p0, "inLetters"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, " TRAFFIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static parseCityTraffic(Ljava/lang/String;Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRStation;
    .locals 7
    .param p0, "inName"    # Ljava/lang/String;
    .param p1, "inTrafficURL"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-static {p0}, Lcom/clearchannel/iheartradio/model/IHRStation;->trafficName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "name":Ljava/lang/String;
    invoke-static {p0}, Lcom/clearchannel/iheartradio/model/IHRStation;->trafficCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "letters":Ljava/lang/String;
    const-string v0, "Updates every 15 minutes Mon-Fri 5AM-10PM"

    .line 183
    .local v0, "description":Ljava/lang/String;
    new-instance v3, Lcom/clearchannel/iheartradio/model/IHRStation;

    const/16 v4, 0x15

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 184
    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 185
    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 186
    aput-object v1, v4, v5

    const/4 v5, 0x3

    .line 187
    aput-object v0, v4, v5

    const/4 v5, 0x4

    .line 188
    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 189
    aput-object v0, v4, v5

    const/4 v5, 0x6

    .line 190
    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 191
    aput-object v2, v4, v5

    const/16 v5, 0x8

    .line 192
    aput-object p1, v4, v5

    const/16 v5, 0x9

    .line 193
    const-string v6, "1"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    .line 194
    const-string v6, "traffic"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    .line 195
    aput-object v2, v4, v5

    const/16 v5, 0xc

    .line 196
    const-string v6, ""

    aput-object v6, v4, v5

    const/16 v5, 0xd

    .line 197
    const-string v6, ""

    aput-object v6, v4, v5

    const/16 v5, 0xe

    .line 198
    const-string v6, ""

    aput-object v6, v4, v5

    const/16 v5, 0xf

    .line 199
    const-string v6, ""

    aput-object v6, v4, v5

    const/16 v5, 0x10

    .line 200
    const-string v6, ""

    aput-object v6, v4, v5

    const/16 v5, 0x11

    .line 201
    const-string v6, ""

    aput-object v6, v4, v5

    const/16 v5, 0x12

    .line 202
    const-string v6, ""

    aput-object v6, v4, v5

    const/16 v5, 0x13

    .line 203
    const-string v6, ""

    aput-object v6, v4, v5

    const/16 v5, 0x14

    .line 204
    const-string v6, ""

    aput-object v6, v4, v5

    .line 183
    invoke-direct {v3, v4}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>([Ljava/lang/String;)V

    return-object v3
.end method

.method public static parseLine(Ljava/util/List;Ljava/util/List;)Lcom/clearchannel/iheartradio/model/IHRStation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/clearchannel/iheartradio/model/IHRStation;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "inKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "inLine":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRStation;

    invoke-direct {v0, p0, p1}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 222
    .local v0, "result":Lcom/clearchannel/iheartradio/model/IHRStation;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->getBaseStreamURL(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 227
    const/4 v0, 0x0

    .line 230
    :cond_0
    return-object v0
.end method

.method public static parseLines(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .param p2, "inStart"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;I)",
            "Ljava/util/List;"
        }
    .end annotation

    .prologue
    .local p0, "inKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "inLines":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v5, 0x1

    .line 234
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/clearchannel/iheartradio/model/IHRStation;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 238
    .local v0, "count":I
    if-nez p0, :cond_0

    if-le p2, v5, :cond_0

    if-le v0, v5, :cond_0

    .line 239
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "inKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast p0, Ljava/util/List;

    .line 242
    .restart local p0    # "inKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move v1, p2

    .local v1, "index":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 249
    return-object v3

    .line 243
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 244
    .local v2, "line":Ljava/util/List;
    invoke-static {p0, v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->parseLine(Ljava/util/List;Ljava/util/List;)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v4

    .line 246
    .local v4, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static parseList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "inStations"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 210
    .local v2, "result":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    if-nez p0, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 212
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 216
    return-object v2

    .line 210
    .end local v0    # "count":I
    .end local v1    # "index":I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v0, v3

    goto :goto_0

    .line 213
    .restart local v0    # "count":I
    .restart local v1    # "index":I
    :cond_1
    new-instance v4, Lcom/clearchannel/iheartradio/model/IHRStation;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v4, v3}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v4}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static reverseStations(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .param p0, "inStations"    # Ljava/util/List;

    .prologue
    .line 254
    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 257
    .local v3, "result":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez p0, :cond_0

    const/4 v5, 0x0

    move v2, v5

    .line 259
    .local v2, "n":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_1

    .line 269
    return-object v3

    .line 257
    .end local v0    # "i":I
    .end local v2    # "n":I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    move v2, v5

    goto :goto_0

    .line 260
    .restart local v0    # "i":I
    .restart local v2    # "n":I
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/clearchannel/iheartradio/model/IHRStation;

    .line 261
    .local v4, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 263
    .local v1, "letters":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 264
    invoke-virtual {v3, v1, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static reverseStationsByStreamId(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .param p0, "inStations"    # Ljava/util/List;

    .prologue
    .line 273
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 276
    .local v2, "result":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez p0, :cond_0

    const/4 v5, 0x0

    move v1, v5

    .line 278
    .local v1, "n":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 288
    return-object v2

    .line 276
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    move v1, v5

    goto :goto_0

    .line 279
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/clearchannel/iheartradio/model/IHRStation;

    .line 280
    .local v3, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 282
    .local v4, "streamID":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 283
    invoke-virtual {v2, v4, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toString(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .param p0, "inStations"    # Ljava/util/List;

    .prologue
    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .local v3, "result":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    const/4 v6, 0x0

    move v0, v6

    .line 379
    .local v0, "count":I
    :goto_0
    mul-int/lit16 v6, v0, 0x100

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 381
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 392
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 377
    .end local v0    # "count":I
    .end local v2    # "index":I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 382
    .restart local v0    # "count":I
    .restart local v2    # "index":I
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/clearchannel/iheartradio/model/IHRStation;

    .line 384
    .local v4, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v6, 0x15

    if-lt v1, v6, :cond_2

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 385
    :cond_2
    invoke-virtual {v4, v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 387
    .local v5, "string":Ljava/lang/String;
    if-nez v5, :cond_3

    const-string v6, ""

    :goto_3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move-object v6, v5

    .line 387
    goto :goto_3
.end method

.method public static trafficCall(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "inName"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "# "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Traffic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trafficName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "inName"    # Ljava/lang/String;

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Traffic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyKeysWithValues(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "inKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "inValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 118
    .local v0, "count":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 119
    .local v1, "index":I
    if-le v0, v1, :cond_0

    move v0, v1

    .line 120
    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    .line 124
    sget-object v5, Lcom/clearchannel/iheartradio/model/IHRStation;->kMap:[Ljava/lang/String;

    array-length v0, v5

    .line 125
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_2

    .line 135
    return-void

    .line 121
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_2
    sget-object v5, Lcom/clearchannel/iheartradio/model/IHRStation;->kMap:[Ljava/lang/String;

    aget-object v2, v5, v1

    .line 127
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 129
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRStation;->size()I

    move-result v5

    if-ge v5, v1, :cond_4

    .line 130
    if-nez v4, :cond_3

    const-string v5, ""

    :goto_2
    invoke-virtual {p0, v1, v5}, Lcom/clearchannel/iheartradio/model/IHRStation;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 125
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v5, v4

    .line 130
    goto :goto_2

    .line 132
    :cond_4
    if-nez v4, :cond_5

    const-string v5, ""

    :goto_4
    invoke-virtual {p0, v5}, Lcom/clearchannel/iheartradio/model/IHRStation;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object v5, v4

    goto :goto_4
.end method

.method public getAdsDisabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 85
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "field":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBaseStreamURL(Z)Ljava/lang/String;
    .locals 1
    .param p1, "inAuthenticated"    # Z

    .prologue
    .line 105
    if-eqz p1, :cond_0

    const/16 v0, 0xf

    :goto_0
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRStation;
    check-cast p0, Ljava/lang/String;

    return-object p0

    .restart local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_0
    const/16 v0, 0xe

    goto :goto_0
.end method

.method public getCallLetters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRStation;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRStation;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getIsTalk()Z
    .locals 2

    .prologue
    .line 89
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "field":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLogoURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRStation;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRStation;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTagDisabled()Z
    .locals 2

    .prologue
    .line 91
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "field":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVideoURL(Z)Ljava/lang/String;
    .locals 4
    .param p1, "inPreferLowBandwidth"    # Z

    .prologue
    const/16 v3, 0x14

    const/16 v2, 0x13

    .line 97
    if-eqz p1, :cond_2

    move v1, v3

    :goto_0
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 101
    .restart local v0    # "result":Ljava/lang/String;
    :cond_1
    return-object v0

    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    move v1, v2

    .line 97
    goto :goto_0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_3
    move v1, v3

    .line 99
    goto :goto_1
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 108
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRStation;
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStream()Z
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRStation;
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isValid()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    const/16 v0, 0x15

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRStation;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    move v0, v2

    .line 151
    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRStation;
    :goto_0
    return v0

    .line 139
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 141
    :cond_1
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRStation;->isFile()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRStation;->isVideo()Z

    move-result v0

    if-nez v0, :cond_4

    .line 145
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRStation;->isStream()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRStation;
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    .restart local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_3
    move v0, v2

    .line 148
    goto :goto_0

    .line 151
    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRStation;
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
