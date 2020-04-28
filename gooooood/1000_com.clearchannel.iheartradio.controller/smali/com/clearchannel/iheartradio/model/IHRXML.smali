.class public Lcom/clearchannel/iheartradio/model/IHRXML;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "IHRXML.java"


# static fields
.field public static final kURLBase:Ljava/lang/String; = "http://www.iheartradio.com/cc-common/iphone/config/"

.field public static sConfigFilesDirectory:Ljava/lang/String;


# instance fields
.field protected mCacheData:Z

.field protected mCachedXML:[B

.field protected mContents:Ljava/lang/String;

.field protected mKeyVersion:J

.field protected mKeyXML:J

.field protected mPost:Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

.field protected mURL:Ljava/lang/String;

.field protected mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "production"

    sput-object v0, Lcom/clearchannel/iheartradio/model/IHRXML;->sConfigFilesDirectory:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "xml"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mCachedXML:[B

    .line 33
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mContents:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mContents:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public parse()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 79
    :try_start_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mCachedXML:[B

    if-eqz v3, :cond_3

    .line 80
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mCachedXML:[B

    .line 89
    .local v0, "data":[B
    :cond_0
    :goto_0
    const-string v3, ""

    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mContents:Ljava/lang/String;

    .line 90
    invoke-static {v0, p0}, Lcom/clearchannel/iheartradio/android/model/IHRPlatform;->parseXML([BLorg/xml/sax/helpers/DefaultHandler;)Z

    .line 92
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mCachedXML:[B

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mVersion:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 93
    iget-wide v3, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mKeyVersion:J

    invoke-static {v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->remove(J)Landroid/content/SharedPreferences$Editor;

    .line 94
    iget-wide v3, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mKeyXML:J

    invoke-static {v3, v4, v0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->setBytes(J[B)V

    .line 95
    iget-wide v3, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mKeyVersion:J

    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mVersion:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->setString(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_1
    const/4 v2, 0x1

    .line 103
    .end local v0    # "data":[B
    .local v2, "success":Z
    :goto_1
    iget-boolean v3, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mCacheData:Z

    if-nez v3, :cond_2

    iput-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mCachedXML:[B

    .line 104
    :cond_2
    iput-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mContents:Ljava/lang/String;

    .line 106
    if-nez v2, :cond_5

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to parse XML"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    .end local v2    # "success":Z
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mURL:Ljava/lang/String;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mPost:Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    invoke-static {v3, v4}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->fetchSynchronous(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;)[B

    move-result-object v0

    .restart local v0    # "data":[B
    if-nez v0, :cond_4

    .line 83
    new-instance v3, Ljava/io/IOException;

    const-string v4, "No XML data received"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    .end local v0    # "data":[B
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2    # "success":Z
    goto :goto_1

    .line 86
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "success":Z
    .restart local v0    # "data":[B
    :cond_4
    iget-boolean v3, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mCacheData:Z

    if-eqz v3, :cond_0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mCachedXML:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 107
    .end local v0    # "data":[B
    .restart local v2    # "success":Z
    :cond_5
    return-void
.end method

.method public parseBytes([B)Z
    .locals 2
    .param p1, "inBytes"    # [B

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 64
    .local v0, "result":Z
    :try_start_0
    const-string v1, ""

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mContents:Ljava/lang/String;

    .line 66
    invoke-static {p1, p0}, Lcom/clearchannel/iheartradio/android/model/IHRPlatform;->parseXML([BLorg/xml/sax/helpers/DefaultHandler;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    .line 69
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/jar/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Ljava/util/jar/Attributes;

    .prologue
    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXML;->mContents:Ljava/lang/String;

    .line 116
    return-void
.end method
