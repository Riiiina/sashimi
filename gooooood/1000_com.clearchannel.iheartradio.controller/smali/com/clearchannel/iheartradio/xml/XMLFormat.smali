.class public Lcom/clearchannel/iheartradio/xml/XMLFormat;
.super Lcom/clearchannel/iheartradio/model/IHRXMLParser;
.source "XMLFormat.java"


# instance fields
.field private currentFormat:Ljava/lang/String;

.field private format:Lcom/clearchannel/iheartradio/model/IHRFormat;

.field public formatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRFormat;",
            ">;"
        }
    .end annotation
.end field

.field private stations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "inBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;-><init>([B)V

    .line 18
    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLFormat;->format:Lcom/clearchannel/iheartradio/model/IHRFormat;

    .line 19
    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLFormat;->stations:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLFormat;->currentFormat:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 58
    :try_start_0
    const-string v1, "genre_name"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLFormat;->getContents()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLFormat;->currentFormat:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    const-string v1, ""

    iput-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLFormat;->mContents:Ljava/lang/String;

    .line 83
    return-void

    .line 61
    :cond_1
    :try_start_1
    const-string v1, "stream_id"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLFormat;->stations:Ljava/util/List;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLFormat;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XMLFormat endElement"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    const-string v1, "genre"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLFormat;->format:Lcom/clearchannel/iheartradio/model/IHRFormat;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/xml/XMLFormat;->currentFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRFormat;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLFormat;->format:Lcom/clearchannel/iheartradio/model/IHRFormat;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/xml/XMLFormat;->stations:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRFormat;->addAll(Ljava/util/Collection;)Z

    .line 70
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLFormat;->currentFormat:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLFormat;->formatList:Ljava/util/List;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/xml/XMLFormat;->format:Lcom/clearchannel/iheartradio/model/IHRFormat;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public parseEnter()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLFormat;->formatList:Ljava/util/List;

    .line 30
    invoke-super {p0}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;->parseEnter()V

    .line 31
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v0, "format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRFormat;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/model/IHRFormat;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLFormat;->format:Lcom/clearchannel/iheartradio/model/IHRFormat;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLFormat;->stations:Ljava/util/List;

    .line 42
    :cond_0
    const-string v0, "genre"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRFormat;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/model/IHRFormat;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLFormat;->format:Lcom/clearchannel/iheartradio/model/IHRFormat;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLFormat;->stations:Ljava/util/List;

    .line 50
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLFormat;->mContents:Ljava/lang/String;

    .line 51
    return-void
.end method
