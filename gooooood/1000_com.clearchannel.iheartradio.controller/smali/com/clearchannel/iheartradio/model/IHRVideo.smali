.class public Lcom/clearchannel/iheartradio/model/IHRVideo;
.super Ljava/lang/Object;
.source "IHRVideo.java"


# instance fields
.field private description:Ljava/lang/String;

.field private mediaId:J

.field private name:Ljava/lang/String;

.field private shareLink:Ljava/lang/String;

.field private thumbnail50:Ljava/lang/String;

.field private thumbnail85:Ljava/lang/String;

.field private videoURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRVideo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaId()J
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/clearchannel/iheartradio/model/IHRVideo;->mediaId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRVideo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getShareLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRVideo;->shareLink:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail50()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRVideo;->thumbnail50:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail85()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRVideo;->thumbnail85:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRVideo;->videoURL:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRVideo;->description:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setMediaId(J)V
    .locals 0
    .param p1, "mediaId"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/clearchannel/iheartradio/model/IHRVideo;->mediaId:J

    .line 17
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRVideo;->name:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setShareLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareLink"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRVideo;->shareLink:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setThumbnail50(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnail50"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRVideo;->thumbnail50:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setThumbnail85(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnail85"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRVideo;->thumbnail85:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setVideoURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoURL"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRVideo;->videoURL:Ljava/lang/String;

    .line 35
    return-void
.end method
