.class public Lcom/olivephone/model/RssNews;
.super Ljava/lang/Object;
.source "RssNews.java"


# instance fields
.field private htmlurl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private xmlUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHtmlurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/olivephone/model/RssNews;->htmlurl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/olivephone/model/RssNews;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/olivephone/model/RssNews;->xmlUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setHtmlurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "htmlurl"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/olivephone/model/RssNews;->htmlurl:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/olivephone/model/RssNews;->title:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setXmlUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "xmlUrl"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/olivephone/model/RssNews;->xmlUrl:Ljava/lang/String;

    .line 26
    return-void
.end method
