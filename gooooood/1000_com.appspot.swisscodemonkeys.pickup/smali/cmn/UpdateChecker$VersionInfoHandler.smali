.class Lcmn/UpdateChecker$VersionInfoHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "UpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcmn/UpdateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VersionInfoHandler"
.end annotation


# instance fields
.field keyValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field versions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcmn/UpdateChecker$VersionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcmn/UpdateChecker$VersionInfoHandler;->versions:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcmn/UpdateChecker$VersionInfoHandler;->keyValues:Ljava/util/Map;

    .line 165
    return-void
.end method

.method synthetic constructor <init>(Lcmn/UpdateChecker$VersionInfoHandler;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcmn/UpdateChecker$VersionInfoHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getParsedData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcmn/UpdateChecker$VersionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcmn/UpdateChecker$VersionInfoHandler;->versions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 177
    const-string v6, "info"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 178
    const-string v6, "package"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "packageName":Ljava/lang/String;
    new-instance v1, Lcmn/UpdateChecker$VersionInfo;

    invoke-direct {v1}, Lcmn/UpdateChecker$VersionInfo;-><init>()V

    .line 180
    .local v1, "info":Lcmn/UpdateChecker$VersionInfo;
    iput-object v3, v1, Lcmn/UpdateChecker$VersionInfo;->packageName:Ljava/lang/String;

    .line 181
    const-string v6, "currentVersion"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcmn/UpdateChecker$VersionInfo;->currentVersion:I

    .line 182
    const-string v6, "prefCurrentVersion"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcmn/UpdateChecker$VersionInfo;->prefCurrentVersion:I

    .line 183
    const-string v6, "text"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcmn/UpdateChecker$VersionInfo;->text:Ljava/lang/String;

    .line 184
    const-string v6, "update"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcmn/UpdateChecker$VersionInfo;->updateUrl:Ljava/lang/String;

    .line 185
    const-string v6, "noUpdateText"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcmn/UpdateChecker$VersionInfo;->noUpdateText:Ljava/lang/String;

    .line 186
    const-string v6, "noUpdateLink"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcmn/UpdateChecker$VersionInfo;->noUpdateLink:Ljava/lang/String;

    .line 187
    const-string v6, "otherAppText"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcmn/UpdateChecker$VersionInfo;->otherAppText:Ljava/lang/String;

    .line 188
    const-string v6, "name"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcmn/UpdateChecker$VersionInfo;->name:Ljava/lang/String;

    .line 189
    const-string v6, "notificationId"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_2

    move v6, v7

    :goto_0
    iput v6, v1, Lcmn/UpdateChecker$VersionInfo;->notificationId:I

    .line 191
    const-string v6, "updateId"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "updateId":Ljava/lang/String;
    if-nez v4, :cond_3

    move v6, v7

    :goto_1
    iput v6, v1, Lcmn/UpdateChecker$VersionInfo;->updateId:I

    .line 193
    const-string v6, "notificationTitle"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcmn/UpdateChecker$VersionInfo;->notificationTitle:Ljava/lang/String;

    .line 194
    const-string v6, "positiveButton"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcmn/UpdateChecker$VersionInfo;->positiveButton:Ljava/lang/String;

    .line 195
    const-string v6, "negativeButton"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcmn/UpdateChecker$VersionInfo;->negativeButton:Ljava/lang/String;

    .line 203
    iget-object v6, p0, Lcmn/UpdateChecker$VersionInfoHandler;->versions:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "info":Lcmn/UpdateChecker$VersionInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "updateId":Ljava/lang/String;
    :cond_0
    const-string v6, "keyvalue"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 207
    const-string v6, "key"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "key":Ljava/lang/String;
    const-string v6, "value"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lcmn/UpdateChecker$VersionInfoHandler;->keyValues:Ljava/util/Map;

    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    return-void

    .line 190
    .restart local v0    # "id":Ljava/lang/String;
    .restart local v1    # "info":Lcmn/UpdateChecker$VersionInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 192
    .restart local v4    # "updateId":Ljava/lang/String;
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1
.end method
