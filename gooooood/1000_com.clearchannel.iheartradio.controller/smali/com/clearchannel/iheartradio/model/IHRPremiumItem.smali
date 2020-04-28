.class public Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
.super Ljava/util/ArrayList;
.source "IHRPremiumItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final kCapacity:I = 0x4

.field public static final kDescription:I = 0x3

.field public static final kGUID:I = 0x0

.field public static final kLink:I = 0x1

.field public static final kMap:[Ljava/lang/String;

.field public static final kTitle:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 18
    const-string v2, "guid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 19
    const-string v2, "link"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 20
    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 21
    const-string v2, "description"

    aput-object v2, v0, v1

    .line 17
    sput-object v0, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->kMap:[Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "inItem":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "inKeys"    # Ljava/util/List;
    .param p2, "inValues"    # Ljava/util/List;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->applyKeysWithValues(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "inItem"    # [Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "inFlattened"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 170
    .local v3, "result":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    new-instance v2, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;-><init>()V

    .line 172
    .local v2, "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    const/4 v0, 0x0

    .line 173
    .local v0, "count":I
    const/4 v4, 0x0

    .line 177
    .local v4, "start":I
    :cond_0
    const/16 v6, 0xa

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 178
    .local v1, "found":I
    if-gez v1, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 180
    .local v5, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v5}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v4, v1, 0x1

    .line 182
    add-int/lit8 v0, v0, 0x1

    .line 184
    const/4 v6, 0x4

    if-ne v0, v6, :cond_1

    .line 185
    const/4 v0, 0x0

    .line 186
    invoke-virtual {v3, v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v2, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .end local v2    # "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    invoke-direct {v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;-><init>()V

    .line 189
    .restart local v2    # "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    :cond_1
    if-gtz v4, :cond_0

    .line 191
    return-object v3

    .line 178
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    goto :goto_0
.end method

.method public static parseLine(Ljava/util/List;Ljava/util/List;)Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    .locals 2
    .param p0, "inKeys"    # Ljava/util/List;
    .param p1, "inLine"    # Ljava/util/List;

    .prologue
    .line 106
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    invoke-direct {v0, p0, p1}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 108
    .local v0, "result":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 112
    :cond_0
    return-object v0
.end method

.method public static parseLines(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .param p0, "inKeys"    # Ljava/util/List;
    .param p1, "inLines"    # Ljava/util/List;
    .param p2, "inStart"    # I

    .prologue
    const/4 v5, 0x1

    .line 116
    new-instance v4, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v4}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 118
    .local v4, "result":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 120
    .local v0, "count":I
    if-nez p0, :cond_0

    if-le p2, v5, :cond_0

    if-le v0, v5, :cond_0

    .line 121
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "inKeys":Ljava/util/List;
    check-cast p0, Ljava/util/List;

    .line 124
    .restart local p0    # "inKeys":Ljava/util/List;
    :cond_0
    move v1, p2

    .local v1, "index":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 131
    return-object v4

    .line 125
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 126
    .local v3, "line":Ljava/util/List;
    invoke-static {p0, v3}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->parseLine(Ljava/util/List;Ljava/util/List;)Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    move-result-object v2

    .line 128
    .local v2, "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    if-eqz v2, :cond_2

    invoke-virtual {v4, v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static parseList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "inItems"    # Ljava/util/List;

    .prologue
    .line 95
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 96
    .local v2, "result":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    if-nez p0, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 98
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 102
    return-object v2

    .line 96
    .end local v0    # "count":I
    .end local v1    # "index":I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v0, v3

    goto :goto_0

    .line 99
    .restart local v0    # "count":I
    .restart local v1    # "index":I
    :cond_1
    new-instance v4, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v4, v3}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v4}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static parseRSS(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p0, "inRSS"    # Ljava/util/List;

    .prologue
    .line 135
    new-instance v7, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v7}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 138
    .local v7, "result":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 140
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 153
    return-object v7

    .line 141
    :cond_0
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 142
    .local v0, "channel":Ljava/util/Map;
    const-string v8, "items"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 143
    .local v5, "items":Ljava/util/List;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 145
    .local v6, "limit":I
    const/4 v2, 0x0

    .local v2, "entry":I
    :goto_1
    if-lt v2, v6, :cond_1

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    :cond_1
    new-instance v4, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    invoke-direct {v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;-><init>()V

    .line 147
    .local v4, "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-virtual {v4, v8}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->applyRSS(Ljava/util/Map;)V

    .line 149
    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->isValid()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v4}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static parseXML([B)Ljava/util/List;
    .locals 3
    .param p0, "inXML"    # [B

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "result":Ljava/util/List;
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/model/IHRRSSParser;-><init>()V

    .line 161
    .local v0, "parser":Lcom/clearchannel/iheartradio/model/IHRRSSParser;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->parse([B)V

    .line 162
    iget-object v2, v0, Lcom/clearchannel/iheartradio/model/IHRRSSParser;->_rss:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-static {v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->parseRSS(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 165
    :goto_0
    return-object v1

    .line 163
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static toString(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .param p0, "inItems"    # Ljava/util/List;

    .prologue
    .line 195
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 196
    .local v4, "result":Ljava/lang/String;
    if-nez p0, :cond_0

    const/4 v6, 0x0

    move v0, v6

    .line 198
    .local v0, "count":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 209
    return-object v4

    .line 196
    .end local v0    # "count":I
    .end local v2    # "index":I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 199
    .restart local v0    # "count":I
    .restart local v2    # "index":I
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .line 201
    .local v3, "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v6, 0x4

    if-lt v1, v6, :cond_2

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 202
    :cond_2
    invoke-virtual {v3, v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 204
    .local v5, "string":Ljava/lang/String;
    if-nez v5, :cond_3

    const-string v6, ""

    :goto_3
    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 205
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move-object v6, v5

    .line 204
    goto :goto_3
.end method


# virtual methods
.method public applyKeysWithValues(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "inKeys"    # Ljava/util/List;
    .param p2, "inValues"    # Ljava/util/List;

    .prologue
    .line 48
    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 52
    .local v3, "map":Ljava/util/Map;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 53
    .local v0, "count":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 54
    .local v1, "index":I
    if-le v0, v1, :cond_0

    move v0, v1

    .line 55
    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    .line 59
    sget-object v5, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->kMap:[Ljava/lang/String;

    array-length v0, v5

    .line 60
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_2

    .line 70
    return-void

    .line 56
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_2
    sget-object v5, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->kMap:[Ljava/lang/String;

    aget-object v2, v5, v1

    .line 62
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 64
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->size()I

    move-result v5

    if-ge v5, v1, :cond_4

    .line 65
    if-nez v4, :cond_3

    const-string v5, ""

    :goto_2
    invoke-virtual {p0, v1, v5}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 60
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v5, v4

    .line 65
    goto :goto_2

    .line 67
    :cond_4
    if-nez v4, :cond_5

    const-string v5, ""

    :goto_4
    invoke-virtual {p0, v5}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object v5, v4

    goto :goto_4
.end method

.method public applyRSS(Ljava/util/Map;)V
    .locals 5
    .param p1, "inRSS"    # Ljava/util/Map;

    .prologue
    .line 73
    const/4 v1, 0x0

    .local v1, "guid":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "link":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "title":Ljava/lang/String;
    const/4 v0, 0x0

    .line 75
    .local v0, "description":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string v4, "url"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "link":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 77
    .restart local v2    # "link":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    const-string v4, "guid"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "guid":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 78
    .restart local v1    # "guid":Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    const-string v4, "link"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "link":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 79
    .restart local v2    # "link":Ljava/lang/String;
    :cond_2
    if-nez v3, :cond_3

    const-string v4, "title"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "title":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 80
    .restart local v3    # "title":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    const-string v4, "description"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "description":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 82
    .restart local v0    # "description":Ljava/lang/String;
    :cond_4
    if-nez v3, :cond_5

    const-string v4, "itunes:author"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "title":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 83
    .restart local v3    # "title":Ljava/lang/String;
    :cond_5
    if-nez v0, :cond_6

    const-string v4, "itunes:summary"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "description":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 84
    .restart local v0    # "description":Ljava/lang/String;
    :cond_6
    if-nez v0, :cond_7

    const-string v4, "content:encoded"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "description":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 85
    .restart local v0    # "description":Ljava/lang/String;
    :cond_7
    if-nez v1, :cond_8

    const-string v4, "link"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "guid":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 86
    .restart local v1    # "guid":Ljava/lang/String;
    :cond_8
    if-nez v1, :cond_9

    move-object v1, v2

    .line 88
    :cond_9
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public truncate()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 34
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->removeRange(II)V

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->trimToSize()V

    :cond_0
    return-void
.end method
