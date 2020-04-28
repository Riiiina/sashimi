.class public Lcom/clearchannel/iheartradio/xml/XMLVideo;
.super Lcom/clearchannel/iheartradio/model/IHRXMLParser;
.source "XMLVideo.java"


# instance fields
.field private video:Lcom/clearchannel/iheartradio/model/IHRVideo;

.field private videoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRVideo;",
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
    .line 22
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;-><init>([B)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLVideo;->video:Lcom/clearchannel/iheartradio/model/IHRVideo;

    .line 23
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v1, "video_media_id"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLVideo;->video:Lcom/clearchannel/iheartradio/model/IHRVideo;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLVideo;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRVideo;->setMediaId(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    const-string v1, ""

    iput-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLVideo;->mContents:Ljava/lang/String;

    .line 66
    return-void

    .line 45
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 46
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLVideo;->video:Lcom/clearchannel/iheartradio/model/IHRVideo;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRVideo;->setMediaId(J)V

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const-string v1, "video_description"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLVideo;->video:Lcom/clearchannel/iheartradio/model/IHRVideo;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLVideo;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRVideo;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_2
    const-string v1, "video_name"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLVideo;->video:Lcom/clearchannel/iheartradio/model/IHRVideo;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLVideo;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRVideo;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_3
    const-string v1, "video_url"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 53
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLVideo;->video:Lcom/clearchannel/iheartradio/model/IHRVideo;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLVideo;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRVideo;->setVideoURL(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_4
    const-string v1, "video_thumbnail_url_50x50"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 55
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLVideo;->video:Lcom/clearchannel/iheartradio/model/IHRVideo;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLVideo;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRVideo;->setThumbnail50(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_5
    const-string v1, "video_thumbnail_url_85x85"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 57
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLVideo;->video:Lcom/clearchannel/iheartradio/model/IHRVideo;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLVideo;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRVideo;->setThumbnail85(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_6
    const-string v1, "video_share_link"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 59
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLVideo;->video:Lcom/clearchannel/iheartradio/model/IHRVideo;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/xml/XMLVideo;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRVideo;->setShareLink(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 60
    :cond_7
    const-string v1, "video"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/clearchannel/iheartradio/xml/XMLVideo;->videoList:Ljava/util/List;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/xml/XMLVideo;->video:Lcom/clearchannel/iheartradio/model/IHRVideo;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getVideoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRVideo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLVideo;->videoList:Ljava/util/List;

    return-object v0
.end method

.method public parseEnter()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLVideo;->videoList:Ljava/util/List;

    .line 28
    invoke-super {p0}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;->parseEnter()V

    .line 29
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRVideo;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/model/IHRVideo;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLVideo;->video:Lcom/clearchannel/iheartradio/model/IHRVideo;

    .line 36
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/xml/XMLVideo;->mContents:Ljava/lang/String;

    return-void
.end method
