.class public Lcom/clearchannel/iheartradio/model/IHRXMLParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "IHRXMLParser.java"


# instance fields
.field protected mContents:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

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
    .line 19
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;->parse([B)V

    return-void
.end method

.method public static parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 2
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "inHandler"    # Lorg/xml/sax/helpers/DefaultHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 24
    .local v0, "factory":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v1, 0x0

    .line 26
    .local v1, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 27
    invoke-virtual {v1, p0, p1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 31
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLParser;->mContents:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLParser;->mContents:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0, p2}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;->endElement(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLParser;->mContents:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse([B)V
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
    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLParser;->mContents:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;->parseEnter()V

    .line 37
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p0}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 38
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;->parseLeave()V

    .line 39
    return-void
.end method

.method public parseEnter()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public parseLeave()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLParser;->mContents:Ljava/lang/String;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 59
    invoke-virtual {p0, p2}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;->startElement(Ljava/lang/String;)V

    .line 60
    return-void
.end method
