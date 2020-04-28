.class public Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;
.super Lcom/clearchannel/iheartradio/model/IHRObject;
.source "IHRConfigurationFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$android$services$IHRConfigurationFile$ConfigurationMode:[I = null

.field public static final API_KEY:Ljava/lang/String; = "QW5kcm9pZHwzfHhtbHwzLjE="

.field public static currentConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode; = null

.field protected static final kKeyCitiesFile:J = 0xee7f904f66bed1bL

.field protected static final kKeyCitiesVersion:J = -0x1eb87e7f26ef8062L

.field protected static final kKeyFormatsFile:J = 0x5d7a40664f40e06fL

.field protected static final kKeyFormatsVersion:J = 0x2ec6bf514db1b646L

.field protected static final kKeyLocalStationsXML:J = 0xd20bf0494d61727L

.field protected static final kKeyPremiumFile:J = 0x5d7a40ec4f40e06fL

.field protected static final kKeyPremiumVersion:J = 0x2ec6ec514db1b646L

.field protected static final kKeyStationListFile:J = -0x2a4caaa25d1a26bfL

.field protected static final kKeyStationListVersion:J = 0x547e3060d6e71ca0L

.field protected static final kServiceProductionURL:Ljava/lang/String; = "http://service.ccrd.clearchannel.com/mobileservices/"

.field public static kServiceStagingURL:Ljava/lang/String; = null

.field public static final kVersionModified:Ljava/lang/String; = "<!=>\t"

.field public static final kVersionPrevious:Ljava/lang/String; = "<!@>\t"


# direct methods
.method static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$android$services$IHRConfigurationFile$ConfigurationMode()[I
    .locals 3

    .prologue
    .line 21
    sget-object v0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->$SWITCH_TABLE$com$clearchannel$iheartradio$android$services$IHRConfigurationFile$ConfigurationMode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;->values()[Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;->PRODUCTION:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;->STAGING:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->$SWITCH_TABLE$com$clearchannel$iheartradio$android$services$IHRConfigurationFile$ConfigurationMode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "http://stg02-service.ccrd.clearchannel.com/mobileservices/"

    sput-object v0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->kServiceStagingURL:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRObject;-><init>()V

    return-void
.end method

.method public static access(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 9
    .param p0, "which"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 58
    const/4 v4, 0x0

    check-cast v4, [B

    .line 59
    .local v4, "result":[B
    const/4 v5, 0x0

    .line 61
    .local v5, "stored":Ljava/lang/String;
    const-wide/16 v0, 0x0

    .line 62
    .local v0, "keyFile":J
    const-wide/16 v2, 0x0

    .line 66
    .local v2, "keyVersion":J
    const-string v6, "local_stations"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 67
    const-wide v0, 0xd20bf0494d61727L

    .line 68
    const-wide v2, 0x10ca157a71045L

    .line 83
    :cond_0
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v6, v0

    if-eqz v6, :cond_1

    sget-object v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-eqz v6, :cond_1

    .line 85
    if-nez p1, :cond_6

    .line 86
    sget-object v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesRemove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    sget-object v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesRemove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    :cond_1
    :goto_1
    return-object v4

    .line 69
    :cond_2
    const-string v6, "cities"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 70
    const-wide v0, 0xee7f904f66bed1bL    # 7.362934734914171E-237

    .line 71
    const-wide v2, -0x1eb87e7f26ef8062L    # -4.130894265701108E160

    goto :goto_0

    .line 72
    :cond_3
    const-string v6, "formats"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 73
    const-wide v0, 0x5d7a40664f40e06fL    # 2.0007512907960172E142

    .line 74
    const-wide v2, 0x2ec6bf514db1b646L    # 2.3418642707339318E-83

    goto :goto_0

    .line 75
    :cond_4
    const-string v6, "premium"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 76
    const-wide v0, 0x5d7a40ec4f40e06fL    # 2.0009071250185062E142

    .line 77
    const-wide v2, 0x2ec6ec514db1b646L    # 2.3599611528844053E-83

    goto :goto_0

    .line 78
    :cond_5
    const-string v6, "station_list"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    const-wide v0, -0x2a4caaa25d1a26bfL    # -6.928322470919111E104

    .line 80
    const-wide v2, 0x547e3060d6e71ca0L    # 1.0317322383106493E99

    goto :goto_0

    .line 91
    :cond_6
    if-nez p2, :cond_8

    .line 92
    sget-object v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    if-eqz v5, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "<!@>\t"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "<!=>\t"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<!=>\t"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 96
    :cond_7
    sget-object v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesCopyBytes(Ljava/lang/String;)[B

    move-result-object v4

    goto/16 :goto_1

    .line 100
    :cond_8
    sget-object v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p2}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesPut(Ljava/lang/String;[B)Landroid/content/SharedPreferences$Editor;

    .line 101
    sget-object v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesPut(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1
.end method

.method public static arrayFromCities([BLjava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p0, "inData"    # [B
    .param p1, "inStations"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRCity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->bytesToStringArrays([BZ)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/clearchannel/iheartradio/model/IHRCity;->parseLines(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static arrayFromFormats([BLjava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p0, "inData"    # [B
    .param p1, "inStations"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRFormat;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 334
    invoke-static {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->bytesToStringArrays([BZ)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lcom/clearchannel/iheartradio/model/IHRFormat;->parseLines(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static arrayFromStations([B)Ljava/util/List;
    .locals 3
    .param p0, "inData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRStation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 353
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->bytesToStringArrays([BZ)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->parseLines(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static baseURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "which"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 51
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://service.ccrd.clearchannel.com/mobileservices/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    return-object v0
.end method

.method public static bytesToStringArrays([BZ)Ljava/util/List;
    .locals 10
    .param p0, "inData"    # [B
    .param p1, "inCoalesceFields"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZ)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    .line 296
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v2, "line":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, p0

    .line 302
    .local v3, "n":I
    const/4 v5, 0x0

    .line 304
    .local v5, "s":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 322
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 323
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_0
    return-object v4

    .line 305
    :cond_1
    aget-byte v0, p0, v1

    .line 307
    .local v0, "c":B
    if-eq v0, v9, :cond_2

    const/16 v7, 0x9

    if-ne v0, v7, :cond_6

    .line 308
    :cond_2
    if-gt v1, v5, :cond_3

    if-nez p1, :cond_4

    .line 309
    :cond_3
    new-instance v6, Ljava/lang/String;

    sub-int v7, v1, v5

    const-string v8, "UTF-8"

    invoke-direct {v6, p0, v5, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 310
    .local v6, "string":Ljava/lang/String;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    .end local v6    # "string":Ljava/lang/String;
    :cond_4
    if-ne v0, v9, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 314
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "line":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .restart local v2    # "line":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    add-int/lit8 v5, v1, 0x1

    .line 304
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static fetchFromServer(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 8
    .param p0, "which"    # Ljava/lang/String;
    .param p1, "arguments"    # Ljava/lang/String;

    .prologue
    .line 241
    const/4 v1, 0x0

    check-cast v1, [B

    .line 242
    .local v1, "result":[B
    invoke-static {p0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->baseURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x3f

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_1

    const-string v6, "?"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 249
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 250
    .local v2, "start":J
    invoke-static {v4}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->fetchSynchronous(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 260
    .end local v2    # "start":J
    :goto_1
    return-object v1

    .line 244
    :cond_1
    const-string v6, "&"

    goto :goto_0

    .line 253
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "IHRConfigurationFile.fetchFromServer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static fetchOrLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "which"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "arguments"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 264
    if-nez p1, :cond_3

    move-object v0, v1

    .line 266
    .local v0, "result":[B
    :goto_0
    if-eqz p1, :cond_0

    const-string v1, "<!@>\t"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "<!=>\t"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 267
    :cond_0
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_2

    .line 268
    :cond_1
    invoke-static {p0, p2}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->fetchFromServer(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 270
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 271
    invoke-static {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->access(Ljava/lang/String;Ljava/lang/String;[B)[B

    .line 276
    :cond_2
    return-object v0

    .line 264
    .end local v0    # "result":[B
    :cond_3
    invoke-static {p0, p1, v1}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->access(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static fetchViaService(Ljava/lang/String;)[B
    .locals 4
    .param p0, "which"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, 0x0

    check-cast v0, [B

    .line 113
    .local v0, "result":[B
    const-string v1, ""

    .line 115
    .local v1, "url":Ljava/lang/String;
    invoke-static {}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->$SWITCH_TABLE$com$clearchannel$iheartradio$android$services$IHRConfigurationFile$ConfigurationMode()[I

    move-result-object v2

    sget-object v3, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->currentConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://service.ccrd.clearchannel.com/mobileservices/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    :goto_0
    :try_start_0
    invoke-static {v1}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->fetchSynchronous(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    :goto_1
    return-object v0

    .line 118
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://service.ccrd.clearchannel.com/mobileservices/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    goto :goto_0

    .line 122
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->kServiceStagingURL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    goto :goto_0

    .line 132
    :catch_0
    move-exception v2

    goto :goto_1

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCoverAndLyricsByCallLetters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p0, "callLetters"    # Ljava/lang/String;
    .param p1, "artist"    # Ljava/lang/String;
    .param p2, "track"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 140
    const/4 v7, 0x4

    new-array v4, v7, [Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v4, v8

    const-string v7, ""

    aput-object v7, v4, v9

    const/4 v7, 0x2

    const-string v8, ""

    aput-object v8, v4, v7

    const-string v7, ""

    aput-object v7, v4, v10

    .line 141
    .local v4, "result":[Ljava/lang/String;
    const-string v2, "UTF-8"

    .line 142
    .local v2, "enc":Ljava/lang/String;
    const/4 v0, 0x0

    .line 143
    .local v0, "attempts":I
    const/4 v3, 0x0

    check-cast v3, [B

    .line 144
    .local v3, "httpResult":[B
    :goto_0
    if-nez v3, :cond_0

    if-le v0, v10, :cond_2

    .line 165
    :cond_0
    if-eqz v3, :cond_1

    .line 166
    :try_start_0
    new-instance v5, Lcom/clearchannel/iheartradio/xml/XMLTrackInfo;

    invoke-direct {v5, v3}, Lcom/clearchannel/iheartradio/xml/XMLTrackInfo;-><init>([B)V

    .line 168
    .local v5, "trackInfo":Lcom/clearchannel/iheartradio/xml/XMLTrackInfo;
    iget-object v4, v5, Lcom/clearchannel/iheartradio/xml/XMLTrackInfo;->trackInfo:[Ljava/lang/String;

    .line 169
    const-string v7, "SongInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Fetched "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v5    # "trackInfo":Lcom/clearchannel/iheartradio/xml/XMLTrackInfo;
    :cond_1
    :goto_1
    return-object v4

    .line 145
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 147
    :try_start_1
    const-string v6, "http://www.iheartradio.com/cc-common/iphone/config/production/iphoneTrackXML.php?"

    .line 148
    .local v6, "url":Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "callletters="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&coverarthw=400"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 151
    :cond_3
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 152
    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 153
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "tname="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&aname="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 155
    :cond_5
    const-string v7, "SongInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Fetching "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {v6}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->fetchSynchronous(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto/16 :goto_0

    .line 173
    .end local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 159
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto/16 :goto_0
.end method

.method public static getNowPlayingByCallLetters(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "callLetters"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    .line 180
    new-array v2, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string v6, ""

    aput-object v6, v2, v5

    .line 181
    .local v2, "nowPlaying":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 182
    .local v0, "attempts":I
    const/4 v3, 0x0

    check-cast v3, [B

    .line 183
    .local v3, "result":[B
    :goto_0
    if-nez v3, :cond_0

    if-le v0, v7, :cond_2

    .line 195
    :cond_0
    if-eqz v3, :cond_1

    .line 196
    :try_start_0
    new-instance v4, Lcom/clearchannel/iheartradio/xml/XMLNowPlaying;

    invoke-direct {v4, v3}, Lcom/clearchannel/iheartradio/xml/XMLNowPlaying;-><init>([B)V

    .line 197
    .local v4, "xmlNowPlaying":Lcom/clearchannel/iheartradio/xml/XMLNowPlaying;
    iget-object v2, v4, Lcom/clearchannel/iheartradio/xml/XMLNowPlaying;->nowPlaying:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    .end local v4    # "xmlNowPlaying":Lcom/clearchannel/iheartradio/xml/XMLNowPlaying;
    :cond_1
    :goto_1
    return-object v2

    .line 184
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 187
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "now_playing/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->fetchViaService(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    .line 189
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 199
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 200
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getNowPlayingByStreamId(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "streamId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    .line 208
    new-array v3, v8, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string v7, ""

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-string v7, ""

    aput-object v7, v3, v6

    .line 209
    .local v3, "nowPlaying":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 210
    .local v0, "attempts":I
    const/4 v4, 0x0

    check-cast v4, [B

    .line 211
    .local v4, "result":[B
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;-><init>()V

    .line 212
    .local v2, "encoder":Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;
    const-string v6, "apikey"

    const-string v7, "QW5kcm9pZHwzfHhtbHwzLjE="

    invoke-virtual {v2, v6, v7}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v6, "streamid"

    invoke-virtual {v2, v6, p0}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :goto_0
    if-nez v4, :cond_0

    if-le v0, v8, :cond_2

    .line 229
    :cond_0
    if-eqz v4, :cond_1

    .line 231
    :try_start_0
    new-instance v5, Lcom/clearchannel/iheartradio/xml/XMLNowPlaying;

    invoke-direct {v5, v4}, Lcom/clearchannel/iheartradio/xml/XMLNowPlaying;-><init>([B)V

    .line 232
    .local v5, "xmlNowPlaying":Lcom/clearchannel/iheartradio/xml/XMLNowPlaying;
    iget-object v3, v5, Lcom/clearchannel/iheartradio/xml/XMLNowPlaying;->nowPlaying:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 237
    .end local v5    # "xmlNowPlaying":Lcom/clearchannel/iheartradio/xml/XMLNowPlaying;
    :cond_1
    :goto_1
    return-object v3

    .line 217
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 220
    :try_start_1
    const-string v6, "out_of_band_metadata"

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->fetchFromServer(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0

    .line 222
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 235
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
