.class public Lcom/clearchannel/iheartradio/xml/XMLTrackInfo;
.super Lcom/clearchannel/iheartradio/model/IHRXMLParser;
.source "XMLTrackInfo.java"


# instance fields
.field public trackInfo:[Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "inBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;-><init>([B)V

    .line 13
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v0, "lyrics_url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLTrackInfo;->trackInfo:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLTrackInfo;->getContents()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 34
    :cond_0
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLTrackInfo;->mContents:Ljava/lang/String;

    .line 35
    return-void

    .line 30
    :cond_1
    const-string v0, "cover_art"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLTrackInfo;->trackInfo:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLTrackInfo;->getContents()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public parseEnter()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLTrackInfo;->trackInfo:[Ljava/lang/String;

    .line 18
    invoke-super {p0}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;->parseEnter()V

    .line 19
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLTrackInfo;->mContents:Ljava/lang/String;

    .line 24
    return-void
.end method
