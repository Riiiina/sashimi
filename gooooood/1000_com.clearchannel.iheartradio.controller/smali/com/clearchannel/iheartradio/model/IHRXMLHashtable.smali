.class public Lcom/clearchannel/iheartradio/model/IHRXMLHashtable;
.super Lcom/clearchannel/iheartradio/model/IHRXMLParser;
.source "IHRXMLHashtable.java"


# instance fields
.field protected mHashtable:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "inXML"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;-><init>([B)V

    .line 16
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 23
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLHashtable;->mContents:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLHashtable;->mHashtable:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLHashtable;->mContents:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public parseEnter()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLHashtable;->mHashtable:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-super {p0}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;->parseEnter()V

    return-void
.end method
