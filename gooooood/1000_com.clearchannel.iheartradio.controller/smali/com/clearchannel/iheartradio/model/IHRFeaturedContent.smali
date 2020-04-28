.class public Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;
.super Ljava/lang/Object;
.source "IHRFeaturedContent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x51ce9d56d81b5f02L


# instance fields
.field private callLetters:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private contentUrl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private id:J

.field private thumbnailUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallLetters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->callLetters:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->contentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->id:J

    return-wide v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isStream()Z
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->contentType:Ljava/lang/String;

    const-string v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVideo()Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->contentType:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCallLetters(Ljava/lang/String;)V
    .locals 0
    .param p1, "callLetters"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->callLetters:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->contentType:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setContentUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentUrl"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->contentUrl:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->description:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->id:J

    .line 23
    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnailUrl"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->thumbnailUrl:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->title:Ljava/lang/String;

    .line 35
    return-void
.end method
