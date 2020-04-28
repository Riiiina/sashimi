.class public Lcom/clearchannel/iheartradio/model/IHRRSSParser;
.super Lcom/clearchannel/iheartradio/model/IHRXMLParser;
.source "IHRRSSParser.java"


# instance fields
.field public _channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field public _channel_array:Lcom/clearchannel/iheartradio/android/model/IHRVector;

.field public _current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field public _item:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field public _items:Ljava/lang/String;

.field public _key:Ljava/lang/String;

.field public _rss:Lcom/clearchannel/iheartradio/android/model/IHRVector;

.field public _value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "inURL"    # Ljava/lang/String;
    .param p2, "inName"    # Ljava/lang/String;
    .param p3, "inQualified"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 35
    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_channel_array:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_item:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 38
    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_item:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string v0, "channel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_items:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "items"

    :goto_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_channel_array:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_rss:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 43
    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_channel_array:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 44
    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 45
    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    goto :goto_0

    .line 40
    :cond_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_items:Ljava/lang/String;

    goto :goto_1

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_key:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->mContents:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_key:Ljava/lang/String;

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "inURL"    # Ljava/lang/String;
    .param p2, "inName"    # Ljava/lang/String;
    .param p3, "inQualified"    # Ljava/lang/String;
    .param p4, "inAttributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "applyAttributes":Z
    const-string v3, "enclosure"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_item:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 75
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 76
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 78
    .local v1, "c":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v1, :cond_6

    .line 83
    .end local v1    # "c":I
    .end local v2    # "i":I
    :cond_1
    const-string v3, ""

    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->mContents:Ljava/lang/String;

    .line 84
    return-void

    .line 58
    :cond_2
    const-string v3, "item"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 59
    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_item:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 60
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_item:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 62
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    :cond_3
    const-string v3, "channel"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 64
    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_channel_array:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 65
    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 66
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 68
    const/4 v0, 0x1

    goto :goto_0

    .line 69
    :cond_4
    const-string v3, "rss"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 70
    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_rss:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    goto :goto_0

    .line 71
    :cond_5
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v3, :cond_0

    .line 72
    iput-object p2, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_key:Ljava/lang/String;

    goto :goto_0

    .line 79
    .restart local v1    # "c":I
    .restart local v2    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
