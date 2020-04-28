.class public Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;
.super Lcom/clearchannel/iheartradio/model/IHRXMLParser;
.source "XMLFeaturedContent.java"


# instance fields
.field contentItem:Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

.field private featuredContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;",
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
    .line 20
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;-><init>([B)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->contentItem:Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

    .line 21
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v1, "item_id"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->contentItem:Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->setId(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    const-string v1, ""

    iput-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->mContents:Ljava/lang/String;

    .line 67
    return-void

    .line 45
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 46
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->contentItem:Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->setId(J)V

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const-string v1, "item_type"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->contentItem:Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_2
    const-string v1, "item_title"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->contentItem:Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_3
    const-string v1, "item_subtitle"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 53
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->contentItem:Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_4
    const-string v1, "item_content"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 55
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->contentItem:Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->setContentUrl(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->contentItem:Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->getContents()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->getContents()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->setCallLetters(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_5
    const-string v1, "featured_item_image_url"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 58
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->contentItem:Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->setThumbnailUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 59
    :cond_6
    const-string v1, "featured_content"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->contentItem:Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->featuredContentList:Ljava/util/List;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->contentItem:Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getFeaturedContentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->featuredContentList:Ljava/util/List;

    return-object v0
.end method

.method public parseEnter()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->featuredContentList:Ljava/util/List;

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
    const-string v0, "featured_content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->contentItem:Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

    .line 38
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLFeaturedContent;->mContents:Ljava/lang/String;

    return-void
.end method
