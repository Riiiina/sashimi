.class public Lcom/clearchannel/iheartradio/xml/XMLCity;
.super Lcom/clearchannel/iheartradio/model/IHRXMLParser;
.source "XMLCity.java"


# instance fields
.field abbreviation:Ljava/lang/String;

.field city:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRCity;",
            ">;"
        }
    .end annotation
.end field

.field currentCity:Ljava/lang/String;

.field stations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field trafficURL:Ljava/lang/String;


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

    .line 25
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;-><init>([B)V

    .line 16
    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->stations:Ljava/util/List;

    .line 17
    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->city:Ljava/util/List;

    .line 18
    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->currentCity:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->trafficURL:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v0, "market_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLCity;->getContents()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->currentCity:Ljava/lang/String;

    .line 74
    :cond_0
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->mContents:Ljava/lang/String;

    .line 75
    return-void

    .line 54
    :cond_1
    const-string v0, "stream_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->stations:Ljava/util/List;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->mContents:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_2
    const-string v0, "market_state_abbreviation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLCity;->getContents()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->abbreviation:Ljava/lang/String;

    goto :goto_0

    .line 62
    :cond_3
    const-string v0, "market_traffic_url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLCity;->getContents()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->trafficURL:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_4
    const-string v0, "market"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->city:Ljava/util/List;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->currentCity:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->city:Ljava/util/List;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->trafficURL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->city:Ljava/util/List;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->abbreviation:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->city:Ljava/util/List;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->stations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    iget-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->cityList:Ljava/util/List;

    new-instance v1, Lcom/clearchannel/iheartradio/model/IHRCity;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->city:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRCity;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public parseEnter()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->cityList:Ljava/util/List;

    .line 31
    invoke-super {p0}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;->parseEnter()V

    .line 32
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "market"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->stations:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->city:Ljava/util/List;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->currentCity:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->trafficURL:Ljava/lang/String;

    .line 44
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLCity;->mContents:Ljava/lang/String;

    return-void
.end method
