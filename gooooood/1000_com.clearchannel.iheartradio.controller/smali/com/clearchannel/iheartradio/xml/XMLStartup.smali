.class public Lcom/clearchannel/iheartradio/xml/XMLStartup;
.super Lcom/clearchannel/iheartradio/model/IHRXMLParser;
.source "XMLStartup.java"


# instance fields
.field private startupData:Lcom/clearchannel/iheartradio/model/IHRStartupData;


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
    .line 18
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;-><init>([B)V

    .line 19
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;)V
    .locals 0
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    .line 114
    return-void
.end method

.method public getStartupData()Lcom/clearchannel/iheartradio/model/IHRStartupData;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLStartup;->startupData:Lcom/clearchannel/iheartradio/model/IHRStartupData;

    return-object v0
.end method

.method public parseEnter()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRStartupData;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/model/IHRStartupData;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLStartup;->startupData:Lcom/clearchannel/iheartradio/model/IHRStartupData;

    .line 24
    invoke-super {p0}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;->parseEnter()V

    .line 25
    return-void
.end method

.method public parseLeave()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 32
    iget-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLStartup;->startupData:Lcom/clearchannel/iheartradio/model/IHRStartupData;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRStartupData;->getAdsGatewayDisplayTime()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLStartup;->startupData:Lcom/clearchannel/iheartradio/model/IHRStartupData;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRStartupData;->getAdsGatewayDisplayTime()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLStartup;->startupData:Lcom/clearchannel/iheartradio/model/IHRStartupData;

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRStartupData;->setAdsGatewayDisplayTime(I)V

    .line 35
    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 123
    return-void
.end method
