.class public Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;
.super Lcom/clearchannel/iheartradio/model/IHRXMLParser;
.source "IHRXMLLocalStations.java"


# instance fields
.field public mCallLetters:Lcom/clearchannel/iheartradio/android/model/IHRVector;

.field public mDistance:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mZipCode:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "xml"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
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
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v0, "call_letters"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;->mCallLetters:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;->mContents:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->addElement(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    :goto_0
    const-string v0, "stream"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 62
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;->mCallLetters:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;->mContents:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->addElement(Ljava/lang/Object;)Z

    .line 69
    :cond_1
    :goto_1
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;->mContents:Ljava/lang/String;

    .line 70
    return-void

    .line 50
    :cond_2
    const-string v0, "distance"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;->mContents:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;->mDistance:Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_3
    const-string v0, "zip_code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 53
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;->mContents:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;->mZipCode:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_4
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;->mContents:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;->mName:Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_5
    const-string v0, "market_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;->mContents:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;->mName:Ljava/lang/String;

    goto :goto_1
.end method

.method public parseEnter()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLLocalStations;->mCallLetters:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-super {p0}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;->parseEnter()V

    return-void
.end method
