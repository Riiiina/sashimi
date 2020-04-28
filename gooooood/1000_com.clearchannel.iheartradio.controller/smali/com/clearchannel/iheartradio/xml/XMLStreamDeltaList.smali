.class public Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;
.super Lcom/clearchannel/iheartradio/model/IHRXMLParser;
.source "XMLStreamDeltaList.java"


# instance fields
.field station:Lcom/clearchannel/iheartradio/model/IHRStation;

.field stationArray:[Ljava/lang/String;

.field public stationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRStation;",
            ">;"
        }
    .end annotation
.end field

.field private streamAction:Ljava/lang/String;


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

    .line 24
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;-><init>([B)V

    .line 17
    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->station:Lcom/clearchannel/iheartradio/model/IHRStation;

    .line 21
    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->stationArray:[Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v1, "stream_dart_url"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->stationArray:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->getContents()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 80
    :cond_0
    :goto_0
    const-string v1, ""

    iput-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->mContents:Ljava/lang/String;

    .line 82
    return-void

    .line 49
    :cond_1
    const-string v1, "stream_call_letters"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->stationArray:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->getContents()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0

    .line 51
    :cond_2
    const-string v1, "stream_description"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 52
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->stationArray:[Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->getContents()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0

    .line 53
    :cond_3
    const-string v1, "stream_logo"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 54
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->stationArray:[Ljava/lang/String;

    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->getContents()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0

    .line 55
    :cond_4
    const-string v1, "stream_name"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 56
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->stationArray:[Ljava/lang/String;

    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->getContents()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0

    .line 57
    :cond_5
    const-string v1, "stream_id"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 59
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->stationArray:[Ljava/lang/String;

    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->getContents()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0

    .line 60
    :cond_6
    const-string v1, "stream_frequency"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 61
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->stationArray:[Ljava/lang/String;

    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->getContents()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0

    .line 62
    :cond_7
    const-string v1, "stream_url"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 64
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->stationArray:[Ljava/lang/String;

    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->getContents()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto/16 :goto_0

    .line 66
    :cond_8
    const-string v1, "stream_url_rtsp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 68
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->stationArray:[Ljava/lang/String;

    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->getContents()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto/16 :goto_0

    .line 70
    :cond_9
    const-string v1, "stream_action"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 72
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->getContents()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->streamAction:Ljava/lang/String;

    goto/16 :goto_0

    .line 74
    :cond_a
    const-string v1, "stream"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRStation;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->stationArray:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>([Ljava/lang/String;)V

    .line 77
    .local v0, "ihrStation":Lcom/clearchannel/iheartradio/model/IHRStation;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->streamAction:Ljava/lang/String;

    iput-object v1, v0, Lcom/clearchannel/iheartradio/model/IHRStation;->streamAction:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->stationList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public parseEnter()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->stationList:Ljava/util/List;

    .line 30
    invoke-super {p0}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;->parseEnter()V

    .line 31
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v0, "stream"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ""

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->stationArray:[Ljava/lang/String;

    .line 40
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLStreamDeltaList;->mContents:Ljava/lang/String;

    .line 41
    return-void
.end method
